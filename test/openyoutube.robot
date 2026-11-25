*** Settings ***
Library          AppiumLibrary
Test Setup       Open YouTube App
Test Teardown    Close YouTube App

*** Variables ***
${REMOTE_URL}         http://127.0.0.1:4723
${PLATFORM_NAME}      Android
${AUTOMATION_NAME}    Uiautomator2
${DEVICE_NAME}        Pixel_7
${APP_PACKAGE}        com.google.android.youtube
${APP_ACTIVITY}       com.google.android.youtube.HomeActivity
${SEARCH_BUTTON}      id=com.google.android.youtube:id/menu_item_1
${SEARCH_BOX}         id=com.google.android.youtube:id/search_edit_text

*** Keywords ***
Open YouTube App
    Open Application    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    automationName=${AUTOMATION_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    noReset=${True}

Close YouTube App
    Terminate Application    ${APP_PACKAGE}
    Close Application

*** Test Cases ***
# Open youtube
#     Sleep    5s

Search On YouTube
    Wait Until Element Is Visible    ${SEARCH_BUTTON}    timeout=15s
    Click Element    ${SEARCH_BUTTON}
    Wait Until Element Is Visible    ${SEARCH_BOX}    timeout=15s
    Input Text    ${SEARCH_BOX}    HELLO
    Press Keycode  66
    Execute Script    mobile: performEditorAction    action=search
    Sleep    5s
