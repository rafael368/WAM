# Worten Activation Manager - WAM Tests

Projeto de automação para o sistema **Worten Activation Manager - WAM** da Worten com [Robot Framework](https://robotframework.org/), buscando implementar de forma simplificada o padrão de projetos de Page Objects e escrita de casos de teste com [Gherkin](https://cucumber.io/docs/gherkin/reference/).

As bibliotecas do Robot encapsulam as ferramentas de testes mais utilizadas do mercado. Para execução dos testes de GUI em sistemas Web, é utilizada a biblioteca do [Selenium](https://www.selenium.dev/). Para execução de testes de GUI em sistemas mobile, é utilizada a biblioteca do [Appium](https://appium.io). Para os testes de API, utiliza-se a biblioteca de [requisições do Python](https://github.com/kennethreitz/requests), que provê todas ferramentas necessárias para as requisições HTTP, tanto para REST quanto para SOAP.

## Configuração do projeto

Robot framework é construído com Python, portanto, é necessário que tenhas a última versão desta tecnologia instalada em sua máquina e pode ser encontrado através na [página oficial do Python](https://www.python.org/downloads/).

A instalação do framework e suas bibliotecas auxiliares é feita através do `pip`, gerenciador de bibliotecas nativo do Python. Proceda com o comando abaixo:

```sh
$ pip install robotframework
```

E verifique se a instalação ocorreu corretamente:

```sh
$ robot --version
```

A seguir, proceda com a instalação das bibliotecas abaixo, através do `pip`:

- [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary/)
- [AppiumLibrary](https://github.com/serhatbolsu/robotframework-appiumlibrary)
- [RequestsLibrary](https://github.com/MarketSquare/robotframework-requests#readme)

## Execução do projeto

Para executar os scripts, execute o comando abaixo via terminal estando dentro do diretório raiz do projeto, e passando como argumentos o diretório onde serão inseridos os relatórios e logs da execução e o diretório onde encontram-se os scripts de teste.

```sh
$ robot -d reports/ tests/
```

## Padrões de projeto e boas práticas

Para trabalhar em um projeto com Robot Framework é fortemente recomendado que o programador leia constantemente sua [documentação](https://robotframework.org/robotframework/#user-guide), e esteja atento aos [padrões de projeto do Python](https://python-patterns.guide/), tecnologia utilizada para implementação do framework.

Lembre-se sempre que o objetivo desta abordagem é construir scripts simples e legíveis. Toda complexidade adicionada ao projeto deve possuir um motivo forte e clara para existir.