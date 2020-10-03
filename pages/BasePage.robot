***Settings***
Documentation    Este arquivo implementa a abertura e fechamento do navegador

Library    SeleniumLibrary

**Variables***

${base_url}    https://auditeste.com.br

***Keywords***

Checking Pop-up
    Wait Until Element Is Visible    id:sg-popup-content-wrapper-1546
    click Element                    css:img[alt='Close']

Open Session
    Open Chrome
    Set Selenium Implicit Wait    5
    # Set Window Size     1280        800

Open Chrome
    Open Browser    https://auditeste.com.br    Chrome    options=add_experimental_option('excludeSwitches', ['enable-logging'])

Close Session
    Close Browser