*** Settings ***
Documentation  This is my first test case
Library  OperatingSystem

*** Keywords ***


*** Variables ***
${hello}        hel am mehedi from khulna lo i
&{hello2}       name=mehedi
@{list}        test

*** Test Cases ***
TEST
    [Tags]    hello
    Log       ${hello}
    Log       ${hello2} 
    Log       ${list}
