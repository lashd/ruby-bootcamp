World(Module.new do
  def browser
    $browser ||= PageMagic.session(browser: :firefox)

    $browser.define_page_mappings '/login' => LoginPage, '/bill' => BillPage
    $browser
  end
end)