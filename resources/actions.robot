*** Settings ***
Documentation    Actions é o arquivo que terá keywords que implementan os steps

Resource    ../pages/BasePage.robot


Library    SeleniumLibrary

***Variables***

${auth}    css:h1[class='vc_custom_heading titulo_site']

***Keywords***

Dado que eu acesso a pagina principal
    Checking Pop-up

Então Devo ser Autenticado
    [Arguments]                      ${auth_message}
    Wait Until Element is Visible    ${auth} 
    Element Should Contain     ${auth}            ${auth_message}    None    True

Quando clico em "Quem Somos"
    Click Element    css:li[id='menu-item-133']

Quando eu passo em "Serviços"
    Mouse Over    css:li[id='menu-item-290']

E clico em Testes Automatizados
    Click Element    css:li[id='menu-item-296']

Quando clico em "Cases de Sucesso"
    Click Element    id:menu-item-392

Quando clico em "Trabalhe Conosco"
    Click Element    id:menu-item-135

Quando clico em "Blog"
    Click Element    id:menu-item-1477

Quando clico em "Contato"
    Click Element    id:menu-item-130



