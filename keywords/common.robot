*** Keywords ***
Open website
    SeleniumLibrary.Open browser    ${PATH}    ${BROWSER}
    SeleniumLibrary.Maximize browser window

Close website
    SeleniumLibrary.Close browser

Click element when ready
    [Arguments]    ${locator}
    SeleniumLibrary.Wait until element is visible    ${locator}
    SeleniumLibrary.Click element    ${locator}