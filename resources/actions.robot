*** Settings ***
Documentation    Actions é o arquivo que terá keywords que implementan os steps

Resource    ../pages/BasePage.robot


Library    SeleniumLibrary
Library    OperatingSystem

***Variables***

${auth}       css:h1[class='vc_custom_heading titulo_site']
${nav_bar}    class=navbar-toggle

***Keywords***

Dado que eu acesso a pagina principal
    Checking Pop-up

Então Devo ser Autenticado
    [Arguments]                      ${auth_message}
    Wait Until Element is Visible    ${auth} 
    Element Should Contain           ${auth}            ${auth_message}    None    True

Quando eu passo em ${text}
    ${id}=        Get Menu ID Json    ${text}       ids_web
    Mouse Over    ${id}

E clico em ${text} na versão web
    Quando clico em ${text} na versão web    

E clico em ${text} na versão mobile
    Quando clico em ${text} na versão mobile    

Quando clico em ${text} na versão web
    ${id}=           Get Menu ID Json    ${text}    ids_web
    Click Element    ${id} 

Quando clico em ${text} na versão mobile
    Click Button    ${nav_bar}
    ${id}=           Get Menu ID Json    ${text}    ids_mobile
    Click Element    ${id}  

### Helper
Get Menu ID Json
    [Arguments]    ${text}      ${json_file}

    ${file}=    Get File    resources/fixtures/${json_file}.json
    ${json}=    Evaluate    json.loads($file)             json

    [Return]    ${json[${text}]}