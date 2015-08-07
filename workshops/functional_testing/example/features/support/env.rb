require 'watir-webdriver'
require 'page_magic'

class LoginPage
  include PageMagic

  element :google, css: '.google_login' do
    text_field(:username, name: 'username')
    text_field(:password, name: 'password')
    button(:login_button, text: 'login') do
      before do

      end
      after do
        puts "I ran after"
      end
    end

    def login name, pass
      username.set name
      password.set pass
      login_button.click
    end
  end



end

class BillPage
  include PageMagic
end





at_exit do
  $browser.close
end