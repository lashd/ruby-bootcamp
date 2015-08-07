require 'rspec'
shared_context :haml_templates do

  def templates_dir
    "#{__dir__}/../views/#{described_class}"
  end

  def render template, locals={}
    result = Haml::Engine.new(File.read(template)).render(self,locals)
    PageMagic::Session.new(Capybara::Node::Simple.new(result))
  end
end
