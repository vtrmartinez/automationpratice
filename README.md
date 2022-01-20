# Automation Pratice

Instalação e configuração, para executar os testes, usando capybara e cucumber no Mac.

## Abrir o terminal e executar os passos:

* Instalar homebrew

		$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

* Instalar rvm

		$ curl -sSL https://get.rvm.io | bash

* Dar permissão nas Gems

		$ sudo chown -R `whoami` /Library/Ruby/Gems

* Clonar o projeto

    $ git clone https://github.com/vtrmartinez/automationpratice

* Instalar bundle

		$ gem install bundler


# Executar os testes

* Abrir a pasta do projeto:

	 	$ cd ~/<pasta_do_projeto>


* Para rodar todos os cenários

		$ cucumber 
    
* Para rodar apenas o cenário de busca

		$ cucumber -t @search
    
* Para rodar apenas o cenário de checkout

		$ cucumber -t @cart
    
## Importante
No arquivo .env é possível configurar com qual motor você deseja rodar os testes. Isto é, utilizando chrome, firefox ou headless.
