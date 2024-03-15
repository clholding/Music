package com.ast.clLesson.config;

import com.ast.clLesson.commonAccount.CustomAuthenticationFailureHandler;
import com.ast.clLesson.commonAccount.CustomAuthenticationSuccessHandler;
import com.ast.clLesson.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import javax.sql.DataSource;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private UserService userService;
    @Autowired
    private CustomAuthenticationSuccessHandler authenticationSuccessHandler;
    @Autowired
    private CustomAuthenticationFailureHandler authenticationFailureHandler;

    private DataSource dataSource;

    //    (임시?)테스트용 유저 이후 삭제
    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth
                .inMemoryAuthentication()
                .withUser("1")
                .password("{noop}1")
                .roles("USER");
//                .roles("ROLE_ADMIN");
    }


    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .authorizeRequests()
                .antMatchers("/signUp","/loginSubmit", "/login").permitAll()
//                .antMatchers("/").authenticated()
                .anyRequest().permitAll();

        http
                .formLogin()
                .loginPage("/login")
                .loginProcessingUrl("/loginSubmit")
                .usernameParameter("username")
                .passwordParameter("password")
                .successHandler(authenticationSuccessHandler)
                .defaultSuccessUrl("/")
                .permitAll();

//                .and()
//                .oauth2Login()
//                .userInfoEndpoint() // oauth2 로그인 성공 후 가져올 때의 설정들
//                // 소셜로그인 성공 시 후속 조치를 진행할 UserService 인터페이스 구현체 등록
//                .userService(customOAuth2UserService); // 리소스 서버에서 사용자 정보를 가져온 상태에서 추가로 진행하고자 하는 기능 명시

//        .and()					//추가
//                .oauth2Login()				// OAuth2기반의 로그인인 경우
//                .loginPage("/login")		// 인증이 필요한 URL에 접근하면 /loginForm으로 이동
//                .defaultSuccessUrl("/")			// 로그인 성공하면 "/" 으로 이동
//                .permitAll();

        http    .logout()
                .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
                .logoutSuccessUrl("/")
                .invalidateHttpSession(true);

        http.csrf().disable();
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/vendor/**","/css/**", "/api/**", "/extentions/**", "/fonts/**","/js/**","/images/**");
    }
    @Override
    public void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userService).passwordEncoder(new BCryptPasswordEncoder());
    }
}
