*** Settings ***
Resource    ${CURDIR}/../keywords/import.robot
Variables    ${CURDIR}/../resources/testdata/data.yaml

Test Setup    Open website
Test Teardown    Close website

*** Test Cases ***
TC01
    [Tags]    TC01
    monline_home_page.Verify all category in website should be visible
    monline_home_feature.Go to the expected page    ${category_page['Gourmet']}
    gourmet_home_page.Verify default language is match with expected    ${language['TH']}
    gourmet_home_feature.Change from default language to expected language    ${language['EN']}
