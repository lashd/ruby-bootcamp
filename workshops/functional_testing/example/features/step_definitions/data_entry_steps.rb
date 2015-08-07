And(/^I enter (.*) as (.*)$/) do |field_name, value|
  browser.text_field(name: field_name).set(value)
end


When(/^I click (.*)/) do |button_text|
  browser.button(text: button_text).click
end


When(/^I login with the correct credentials$/) do
  browser.google.login('Rob', 'password')
end