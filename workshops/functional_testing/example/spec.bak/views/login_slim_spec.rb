require 'page_magic'
require 'haml'


shared_context :haml_templates do

  def templates_dir
    "#{__dir__}/../views/#{described_class}"
  end

  def render template, locals={}
    result = Haml::Engine.new(File.read(template)).render(self,locals)
    PageMagic::Session.new(Capybara::Node::Simple.new(result))
  end
end

class LoginPage
  include PageMagic

  element(:google_login, css: '.login_from_google') do
    text_field :username, name: 'username'
  end

  element(:facebook_login, css: '.login_from_facebook') do
    text_field :username, name: 'username'
  end

end

describe 'login.haml' do
  include_context :haml_templates

  let(:template_name){'login.haml'}

  subject(:login_page) do
    LoginPage.new(render("#{templates_dir}/#{template_name}", title: 'Login Page', google_username: 'Gareth',facebook_username: 'Jim'))
  end

  it 'has a login field' do
    expect(login_page.facebook_login.username.value).to eq('Gareth')
  end
end