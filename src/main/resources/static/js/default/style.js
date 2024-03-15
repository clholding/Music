//mobile nav
const body = document.querySelector('body');
let position = 0;

function menuOpen() {
    document.getElementById("mobileNav").style.display = "flex";

    position = window.pageYOffset;
    body.style.overflow = 'hidden';
    body.style.position = 'fixed';
    body.style.top = `-${position}px`;
    body.style.width = '100%';
}

function menuClose() {
    document.getElementById("mobileNav").style.display = "none";
    
    body.style.removeProperty('overflow');
    body.style.removeProperty('position');
    body.style.removeProperty('top');
    body.style.removeProperty('width');
    window.scrollTo(0, position);
}

function langOpen() {
    document.getElementById("mobileLang").style.display = "flex";

    position = window.pageYOffset;
    body.style.overflow = 'hidden';
    body.style.position = 'fixed';
    body.style.top = `-${position}px`;
    body.style.width = '100%';
}

function langClose() {
    document.getElementById("mobileLang").style.display = "none";
    
    body.style.removeProperty('overflow');
    body.style.removeProperty('position');
    body.style.removeProperty('top');
    body.style.removeProperty('width');
    window.scrollTo(0, position);
}

//헤더 화이트(headerDown) 별도 분리, 직접위치설정
$(function() {

    const $header = $('.header');
    const $window = $(window);
    const $page = $('#company');
    const $menuText = $('.menuText');
    const $label = $('.language_white');
    const $dropDownIcon = $('.dropDownIcon');
    const $logIn = $('.log_in');
    const $icon24Menu = $('.icon_24_menu');
    const $myPage = $('.my_page');
    let pageOffsetTop = $page.offset()?.top - 100;
    //직접 높이 설정
    if(window.location.pathname == "/") {
        pageOffsetTop = 900;
    } else {
        pageOffsetTop = 300;
    }
    $window.on('scroll', function () {
        var scrolled = $window.scrollTop() >= pageOffsetTop;
        $header.toggleClass('headerDown', scrolled);
        $menuText.toggleClass('menuTextDown', scrolled);
        $dropDownIcon.toggleClass('selectBoxDown', scrolled);
        $label.toggleClass('language_black', scrolled);
        $logIn.toggleClass('log_in_black', scrolled);
        $icon24Menu.toggleClass('icon_24_menu_black', scrolled);
        $myPage.toggleClass('my_page_black', scrolled);

    });

});

//safari height100
const webHeight = () => {
    const doc = document.documentElement;
    doc.style.setProperty('--webHeight', `${window.innerHeight}px`);
};
window.addEventListener('resize', webHeight);
webHeight();


//select box custom

const selectDiv = document.querySelector('.selectBox');
const label = document.querySelector('.label');
const options = document.querySelectorAll('.optionItem');

const handleSelect = (item) => {
  label.parentNode.classList.remove('active');
  label.innerHTML = item.textContent;
};

options.forEach(option => {
	option.addEventListener('click', () => handleSelect(option))
});


selectDiv.addEventListener('click', () => {
  if(label.parentNode.classList.contains('active')) {
  	label.parentNode.classList.remove('active');
    $('.dropDownIcon').removeClass('rotate');

  } else {
  	label.parentNode.classList.add('active');
    $('.dropDownIcon').addClass('rotate');
  }
});

const listItems = $('.menuList');
const subMenu = $('.subMenuWrap');

listItems.hover(function(e) {
    showSubMenu();
});

listItems.children().hover(function(e) {
    showSubMenu();
});

$('.header').on('mouseleave', function(e) {
    e.stopPropagation()
    $('.header').css('height', 'auto');
    subMenu.hide();
})

function showSubMenu() {
    $('.header').css('height', 220);
    subMenu.css('display', 'flex');
    subMenu.css('padding-left', $('#nav').offset().left);
    $('.subMenuWrap > div:first-child').css('width', $('#nav li:first-child').width() + 110);
    $('.subMenuWrap > div:nth-child(2)').css('width', $('#nav li:nth-child(2)').width() + 110);
    $('.subMenuWrap > div:nth-child(3)').css('width', $('#nav li:nth-child(3)').width() + 110);
    $('.subMenuWrap > div:last-child').css('width', $('#nav li:last-child').width() + 110);
}