# Ticket 🎟️

Uma versao mais simples do app da ticket 

## Sobre o Projeto

Este projeto é um ponto de partida para uma aplicação Flutter. Ele inclui configurações básicas para começar a desenvolver, testar e verificar a qualidade do código.

-----

## Começando 🚀

Para obter ajuda ao iniciar o desenvolvimento com Flutter, consulte a
[documentação online](https://docs.flutter.dev/), que oferece tutoriais,
exemplos, e uma referência completa da API.

Alguns recursos úteis:

  - [Lab: Escreva seu primeiro app Flutter](https://docs.flutter.dev/get-started/codelab)
  - [Cookbook: Exemplos úteis de Flutter](https://docs.flutter.dev/cookbook)

-----

## Comandos Úteis 🛠️

Aqui estão alguns comandos configurados para este projeto que podem ajudar no seu desenvolvimento.

### Gerar arquivos de cobertura de testes

Este comando executa todos os testes do projeto e gera o arquivo `lcov.info`, que contém os dados de cobertura de código.

```bash
flutter test --coverage
```

### Gerar relatório HTML de cobertura

Após gerar o arquivo `lcov.info`, use este comando para criar um relatório HTML visual e fácil de analisar.

```bash
genhtml coverage/lcov.info -o coverage/html
```

**Pré-requisito:** Você precisa ter o `lcov` instalado. Se não tiver, instale-o com `brew install lcov` (no macOS) ou `sudo apt-get install lcov` (em sistemas Debian/Ubuntu).

### Abrir o relatório de cobertura

Use o comando abaixo para abrir o relatório HTML gerado diretamente no seu navegador.

```bash
open coverage/html/index.html
```