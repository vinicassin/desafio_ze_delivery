require 'selenium-webdriver'
require 'report_builder'

ReportBuilder.configure do |config|
  config.json_path = 'data/reports/report.json'
  config.report_path = "data/reports/report"
  config.report_types = [:html]
  config.report_title = "Projeto Zé Delivery - #{$report_title}"
  config.color = "yellow"
end

Before do |scn|
  Capybara.current_session.driver.browser.manage.delete_all_cookies
  page.driver.quit
  Capybara.page.driver.browser.manage.window.maximize
end

After do |scenario|
  if scenario.failed?
    page.save_screenshot("data/reports/error/evidencia.png")
    embed("data/reports/error/evidencia.png", 'image/png', 'Evidência')
  end
  Capybara.current_session.driver.quit
end

at_exit do
  ReportBuilder.build_report
end