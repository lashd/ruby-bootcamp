require 'page_magic'



class BillPage
  include PageMagic
  element(:statement_date, id: 'statement-date')
end

describe 'Bill Haml' do

  include_context :haml_templates

  let(:template_name){'bill.haml'}

  let(:expected_statement_date){Date.today.strftime('%Y-%m-%d')}

  subject(:page) do
    BillPage.new(render("#{templates_dir}/#{template_name}", statement_date: expected_statement_date ))
  end

  it 'displays the the statement date' do
    expect(page.statement_date.text).to eq(expected_statement_date)
  end
end