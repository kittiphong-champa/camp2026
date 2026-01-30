*** Keywords ***
Change from default language to expected language
    [Arguments]    ${expected_language} 
    common.Click element when ready    ${gourmet_home_locator.btn_change_language}

    IF    "${expected_language}" == "${language['EN']}"
        ${lang}    BuiltIn.Set variable    EN
        ${new_locator}    String.Replace string    ${gourmet_home_locator.opt_selected_language}
        ...        ***language***    ${language['${lang}']}
        common.Click element when ready    ${new_locator}
        gourmet_home_page.Verify language is changed    ${expected_language}    ${lang}
    ELSE
        ${lang}    BuiltIn.Set variable    TH
        ${new_locator}    String.Replace string    ${gourmet_home_locator.opt_selected_language}
        ...        ***language***    ${language['${lang}']}
        common.Click element when ready    ${new_locator}
        gourmet_home_page.Verify language is changed    ${expected_language}    ${lang}
    END