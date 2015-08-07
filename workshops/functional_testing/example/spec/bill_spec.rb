require 'sinatra'
require 'routes/bill'
require 'rack/test'

describe Bill do
  include Rack::Test::Methods

  def app
    described_class
  end

  describe 'get /' do
    it 'renders the bill' do
      expect_any_instance_of(described_class).to receive(:haml).with(:bill).and_call_original

      get('/')
    end

  end
end