***Settings***
Documentation    Prova Auditeste


Resource    ../pages/BasePage.robot
Resource    ../resources/actions.robot

Suite Setup       Open Session Mobile
Suite Teardown    Close Session

Test Teardown   After Test

***Test Cases***

Testando elemento "Quem Somos"
    [tags]                                   001             
    Dado que eu acesso a pagina principal
    Quando clico em "Quem Somos" na versão mobile
    Então Devo ser Autenticado               //QUEM SOMOS

Testando elemento Serviços
    [tags]                               002                        
    Quando clico em "Serviços" na versão mobile
    E clico em "Testes Automatizados" na versão mobile
    Então Devo ser Autenticado           //TESTES AUTOMATIZADOS 

Testando elemtento Cases de Sucesso
    [tags]                                003
    Quando clico em "Cases de Sucesso" na versão mobile
    Então devo ser Autenticado            //CASES DE SUCESSO

Testando Trabalhe Conosco
    [tags]                                004
    Quando clico em "Trabalhe Conosco" na versão mobile
    Então devo ser Autenticado            //TRABALHE    

Testando elemento Blog
    Quando clico em "Blog" na versão mobile
    Então devo ser Autenticado    //BLOG    

Testando elemento Contato
    Quando clico em "Contato" na versão mobile
    Então devo ser autenticado    //CONTATO
***Keywords***

