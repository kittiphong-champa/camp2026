*** Settings ***
Library    Collections
Library    String
Library    SeleniumLibrary
Library    DebugLibrary

# Common
Resource    ${CURDIR}/common.robot

# Pages
Resource    ${CURDIR}/../keywords/pages/monline_home_page.robot
Resource    ${CURDIR}/../keywords/pages/gourmet_home_page.robot

# Features
Resource    ${CURDIR}/../keywords/features/monline_home_feature.robot
Resource    ${CURDIR}/../keywords/features/gourmet_home_feature.robot

# Locator
Resource    ${CURDIR}/../resources/locators/monline_home_locator.robot
Resource    ${CURDIR}/../resources/locators/gourmet_home_locator.robot

# Settings
Resource    ${CURDIR}/../resources/settings/setting.robot

# TestData
Variables    ${CURDIR}/../resources/testdata/data.yaml