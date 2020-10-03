*** Settings ***
Documentation    Actions é o arquivo que terá keywords que implementan os steps

Resource    ../pages/BasePage.robot


Library    SeleniumLibrary
Library    OperatingSystem

***Variables***

${auth}    css:h1[class='vc_custom_heading titulo_site']

***Keywords***

Dado que eu acesso a pagina principal
    Checking Pop-up

Então Devo ser Autenticado
    [Arguments]                      ${auth_message}
    Wait Until Element is Visible    ${auth} 
    Element Should Contain           ${auth}            ${auth_message}    None    True

Quando eu passo em ${text}
    ${id}=        Get Menu ID Json    ${text}
    Mouse Over    ${id}

E clico em ${text}
    Quando clico em ${text}

Quando clico em ${text}
    ${id}=           Get Menu ID Json    ${text}
    Click Element    ${id} 

Get Menu ID Json
    [Arguments]    ${text}

    ${file}=    Get File    resources/fixtures/id.json
    ${json}=    Evaluate    json.loads($file)             json

    [Return]    ${json[${text}]}


