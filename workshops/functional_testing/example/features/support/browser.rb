World(Module.new do
  def browser
    $browser ||= begin
      PageMagic.session(browser: :chrome).tap do |session|
        session.define_page_mappings '/login' => LoginPage, '/bill' => BillPage
      end
    end
  end
end)