***Settings***
Documentation    Prova Auditeste


Resource    ../pages/BasePage.robot
Resource    ../resources/actions.robot

Suite Setup       Open Session
Suite Teardown    Close Session


**Test Cases***
Testando elemento "Quem Somos"
    [tags]                                   001             
    Dado que eu acesso a pagina principal
    Quando clico em "Quem Somos"
    Então Devo ser Autenticado               //QUEM SOMOS

Testando elemento Serviços
    [tags]                               002                        
    Quando eu passo em "Serviços"
    E clico em "Testes Automatizados"
    Então Devo ser Autenticado           //TESTES AUTOMATIZADOS 

Testando elemtento Cases de Sucesso
    [tags]                                003
    Quando clico em "Cases de Sucesso"
    Então devo ser Autenticado            //CASES DE SUCESSO

Testando Trabalhe Conosco
    [tags]                                004
    Quando clico em "Trabalhe Conosco"
    Então devo ser Autenticado            //TRABALHE    

Testando elemento Blog
    Quando clico em "Blog"
    Então devo ser Autenticado    //BLOG    

Testando elemento Contato
    Quando clico em "Contato"
    Então devo ser autenticado    //CONTATO

***Keywords***
