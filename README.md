Exercicios 3 e 4

## Requisitos

- Python3 - 3.8.5  /  https://www.python.org/downloads/
- Robot Framework - 3.2.2
- Cucumber
- ChromeDriver - 
------
## Instalação

"*Para a execução dos comando abaixo é necessário o python instalado em sua maquina.*"

```
pip install robotframework-seleniumlibrary
```

```
pip install robotframework
```
------
## Execução

A execução tem que ser feita na raiz do projeto.

```
robot -d ./logs tests
```
------
## *Observações*

Para rodar os testes é necessário o uso do chromeDriver e o mesmo tem que ser da mesma versão do seu navegador e tem que ser posto no Path do seu computador. 

Para saber a versão do Chrome acesse as configurações e clique em "Sobre o Google Chrome" (Mais Info https://github.com/SeleniumHQ/selenium/wiki/ChromeDriver)

Link: https://chromedriver.storage.googleapis.com/index.html
