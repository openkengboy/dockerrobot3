*** Setting ***
Library          SeleniumLibrary
Library          String
Library          CSVLib
Suite Setup      Setup Headless Chrome
Suite Teardown   Close All Browsers

*** Variables ***
${timeout}        30s

*** Test Cases ***
Read CSV 
    [Tags]    21 
    ${users}=    Read CSV As List    ${CURDIR}/data.csv
    FOR  ${user}   IN   @{users}
        @{us}=      Split String        ${user}[0]      ,
        Log To Console   name : ${us}[1], surname : ${us}[2]
    END

*** Keywords ***

Setup Headless Chrome
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-infobars
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    --allow-insecure-localhost
    Create Webdriver    Chrome    chrome_options=${chrome_options}
    Set Window Size    1600     900
    Set Window Position    0    0
    Go To  data:,
    Delete All Cookies