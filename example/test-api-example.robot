*** Setting ***
Library    SeleniumLibrary
Library          Collections
Library          RequestsLibrary
Suite Setup      Setup Headless Chrome
Suite Teardown   Close All Browsers

*** Variables ***
${timeout}        30s
${SITE_API}       https://reqres.in
${API_USER}       eve.holt@reqres.in
${API_PASS}       cityslicka

*** Test Cases ***
เข้าสู้ระบบด้วยการ login ผ่าน api
    [Tags]    11
    &{headers}=       Create Dictionary    Content-Type     application/json 
    Create Session    apiLogin          ${SITE_API}         ${headers}
    ${resp}=          Post Request      apiLogin            /api/login       {"email": "${API_USER}","password": "${API_PASS}"}
    Status Should Be  200               ${resp}
    Dictionary Should Contain Key       ${resp.json()}      token       

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