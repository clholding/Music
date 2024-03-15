package com.ast.clLesson.commonAccount.accountService;

import com.ast.clLesson.dao.commonDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AccountService {
    @Autowired
    private commonDao commonDao;

}
