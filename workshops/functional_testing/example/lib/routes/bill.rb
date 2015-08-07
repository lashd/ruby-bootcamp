class Bill < Sinatra::Base

  get '/' do
    haml :bill, locals:{statement_date: Date.today.strftime('%Y-%m-%d')}
  end
end