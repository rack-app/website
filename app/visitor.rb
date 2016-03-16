class App::Visitor < App

  get '/' do
    render 'index.html.erb'
  end

  alias_endpoint '/index', '/'

end