class App::Sandbox < App

  layout 'layout.html.erb'

  get '/' do
    render 'index.html'
  end

  alias_endpoint '/index', '/'

  get '/test1' do
    render 'test1.html'
  end

  get '/test2' do
    render 'test2.html'
  end

end