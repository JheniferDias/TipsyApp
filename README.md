# Projeto TipsyApp
Projeto desenvolvido como desafio durante o curso de desenvolvimento iOS da Udemy


[![Build](https://github.com/vafreitas/ios-mod-extract/actions/workflows/swift.yml/badge.svg)](https://github.com/vafreitas/ios-mod-extract/actions/workflows/swift.yml)
[![Version](https://img.shields.io/badge/pod-v1.0.0-blue)](https://github.com/vafreitas/ios-mod-extract)
[![Platform](https://img.shields.io/badge/platform-ios-lightgrey)](https://github.com/vafreitas/ios-mod-extract)
[![License](https://img.shields.io/badge/license-MIT-blueviolet)](https://github.com/vafreitas/ios-mod-extract)

## Introdução

Este é um repositório público exemplificando um projeto seguindo a arquitetura MVVM-C e usando a estratégia multi-repositório utilizando o gerenciador de dependências [CocoaPods](https://cocoapods.org/).
Nele voce irá encontrar uma tela que simula um menu de opções e de extrato bancário.

Fizemos as telas de duas formas, utilizando:
 - Xibs
 - SwiftUI - com tema claro e escuro 🌓

Utilizamos o provedor [Apiary](https://apiary.io/), que simula uma api utilizando payloads mockados, abaixo você encontra a documentação da api criada e utilizada neste módulo.
 - [Documentação da API](https://tqibankapi.docs.apiary.io/#)

## Projeto Principal

Pra rodar o projeto basta clonar o repositório e dentro da pasta **TQIBank** rodar `pod install` no terminal. Após isso, executar no Xcode.

## Requerimentos

- Xcode 13.1
- Swift 5

## ========== Sobre o Módulo de Extrato ==========

## Projeto de Exemplo

Pra rodar o projeto de exemplo basta clonar o repositório e dentro da pasta **Example** rodar `pod install` no terminal.

## CI - Github Actions

Este projeto contém um módulo esta utilizando o CI do [Github Actions](https://github.com/features/actions), caso tenha curiosidade basta acessar a aba **Actions** acima e visualizar o aquivo de configuração. Nele temos configurações de um build completo seguindo da execução dos testes unitários que se encontram no projeto de **Exemplo**.

## Bundler & Fastlane

Utilizamos o [Bundler](https://bundler.io/) para o gerenciamento de ambiente das versões utilizadas do 'cocoapods' e 'fastlane' para execução no CI e em nossa maquina.
<br>
<br>
Este módulo esta integrado com o [Fastlane](https://docs.fastlane.tools/) para execução de build e testes unitários com uma maior facilidade e escalabilidade, 
Caso tenha curiosidade de como funciona instale o [Bundler](https://bundler.io/) em sua maquina e dentro da pasta do projeto execute:

`bundle install`

Após isto para rodar locamente o build do app pelo **Fastlane** digite em seu terminal:

`bundle exec fastlane test_module`

## Instalação

Para instalar em seu projeto, simplesmente adicione esta linha ao seu **Podfile**.

```ruby
pod 'TQIExtract', :git => 'https://github.com/vafreitas/ios-mod-extract.git'
```

## Dependências Externas

Estamos utilizando as seguintes dependências externas:
  - [VFNetwork](https://github.com/vafreitas/VFNetwork) | Protocol oriented network layer

## Autores

<h5>Jhenifer Dias | iOS Developer</h5>
<img src="https://avatars.githubusercontent.com/u/44243456?s=400&u=b585631da49e210e369173b5a31610e1adbb2484&v=4" style="border: none; border-radius:50%" width="100" height="100">
<a href="https://www.linkedin.com/in/jhenifer-dias-91205b16b/"><img align="left" alt="Jhenifer Dias | LinkedIn" src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" /></a>
<br>

## Licensa

O Projeto esta disponivel sobre o licenciamento do MIT, veja o arquivo para mais informações.

