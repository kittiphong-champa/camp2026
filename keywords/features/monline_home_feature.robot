*** Keywords ***
Go to the expected page
    [Arguments]    ${category}
    ${new_locator}    String.Replace string    ${monline_home_locator.img_category}    ***category***    ${category}
    SeleniumLibrary.Wait until page contains element    ${new_locator}    ${timeout_10s}
    SeleniumLibrary.Scroll element into view    ${new_locator}
    common.Click element when ready    ${new_locator}