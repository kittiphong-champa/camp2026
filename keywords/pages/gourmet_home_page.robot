*** Keywords ***
Verify default language is match with expected
    [Arguments]    ${expected_language}
    SeleniumLibrary.Wait until element is visible    ${gourmet_home_locator.btn_change_language}    ${timeout_10s}
    ${current_language}    SeleniumLibrary.Get text    ${gourmet_home_locator.btn_change_language}
    BuiltIn.Should be equal as strings    ${current_language}    ${expected_language}

Verify language is changed
    [Arguments]    ${expected_language}    ${lang}=EN
    SeleniumLibrary.Wait until element is visible    ${gourmet_home_locator.btn_change_language}    ${timeout_10s}
    SeleniumLibrary.Wait until element is visible    ${gourmet_home_locator.btn_category}    ${timeout_10s}
    ${current_language}    SeleniumLibrary.Get text    ${gourmet_home_locator.btn_change_language}
    ${current_category_language}    SeleniumLibrary.Get text    ${gourmet_home_locator.btn_category}
    ${current_url_language}    SeleniumLibrary.Get location
    IF    "${expected_language}" == "${current_language}"
        BuiltIn.Should be equal    ${current_language}    ${language['${lang}']}
        BuiltIn.Should be equal    ${current_category_language}    ${category['${lang}']}
        BuiltIn.Should be equal    ${current_url_language}    ${current_url['${lang}']}
        SeleniumLibrary.Capture page screenshot    result/result.png
    ELSE
        Fail    msg= Fail เนื่องจาก Defect ภาษาไม่เปลี่ยน
    END