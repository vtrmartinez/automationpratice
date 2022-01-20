require 'rspec'
require 'yaml'
require 'selenium/webdriver'
require 'capybara/dsl'
require 'pry'
require 'faker'

World(Capybara::DSL)

Capybara.configure do |config|
  # :selenium_chrome_headless -> execução em headless do chrome sem abrir o navegador
  # :selenium_chrome -> execução do chrome levantando o navegador
  # :selenium -> execução do firefox levantando o navegador
  # :selenium_headless -> execução do firefox em headless
  config.default_driver = :selenium_chrome
end


Capybara.page.driver.browser.manage.window.maximize
Capybara.default_max_wait_time = 10

ENVIRONMENT = (YAML.load_file('./features/config/environment.yml'))