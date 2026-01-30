*** Keywords ***
Verify all category in website should be visible
    FOR    ${category}    IN    @{category_check_list}
        ${new_locator}    String.Replace string    ${monline_home_locator.img_category}    ***category***    ${category}
        SeleniumLibrary.Element should be visible    ${new_locator}
    END