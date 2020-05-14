*** Setting ***
Library    SeleniumLibrary
Suite Setup      Setup Headless Chrome
Suite Teardown  Close All Browsers

*** Variables ***
${timeout}        30s

*** Test Cases ***
เปิดดูเว็บ เราไม่ทิ้งกัน.com
    [Tags]    01
    Open website            https://www.เราไม่ทิ้งกัน.com
    Page Should Contain     5,000 บาท

เปิดดูหน้าตรวจสอบสถานะได้
    [Tags]    02
    Open website            https://www.เราไม่ทิ้งกัน.com
    Click Element           css:.btn-checkstatus
    Input Text              id:citizenId        1111111111119
    Click Button            id:verify
    Sleep                   3
    Page Should Contain     กรุณากรอกหมายเลขโทรศัพท์ที่ใช้ลงทะเบียน

*** Keywords ***

Open website
    [Arguments]  ${url}
    Go to    ${url}
    Wait Until Element Is Visible    css:body
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