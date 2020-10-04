***Settings***
Documentation    Este arquivo implementa a abertura e fechamento do navegador

Library    SeleniumLibrary

**Variables***

${base_url}    https://auditeste.com.br

***Keywords***

Checking Pop-up
    Wait Until Element Is Visible    id:sg-popup-content-wrapper-1546
    click Element                    css:img[alt='Close']

Open Session Web
    Open Chrome
    Set Selenium Implicit Wait    10


Open Session Mobile
    Open Chrome
    Set Selenium Implicit Wait    10
    Set Window Size               400    850

Open Chrome
    Open Browser    https://auditeste.com.br    Chrome    options=add_experimental_option('excludeSwitches', ['enable-logging'])

Close Session
    Close Browser

After Test
    Capture Page Screenshot

