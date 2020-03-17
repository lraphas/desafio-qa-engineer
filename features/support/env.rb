require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

@browser = ENV['BROWSER']

Capybara.configure do |config|
    config.default_driver = :selenium if @browser.eql?('firefox')
    config.default_driver = :selenium_chrome if @browser.eql?('chrome')
    config.default_driver = :selenium_chrome_headless if @browser.eql?('headless')
    config.app_host = 'https://www.estrategiaconcursos.com.br'
end

Capybara.ignore_hidden_elements = false
Capybara.default_max_wait_time = 10