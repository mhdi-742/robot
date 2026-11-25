*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}         http://127.0.0.1:4723
${PLATFORM_NAME}      Android
${AUTOMATION_NAME}    UiAutomator2
${DEVICE_NAME}        Pixel_7
${APP_PACKAGE}        com.google.android.youtube
${APP_ACTIVITY}       com.google.android.youtube.HomeActivity

*** Test Cases ***
Open youtube
    Open Application    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    automationName=${AUTOMATION_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    noReset=${True}
    Sleep    5s
    Close Application
