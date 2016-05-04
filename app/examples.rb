class App::Examples < App::Visitor

  desc 'a simple api'
  get '/simple_api' do
    render 'simple_api.html'
  end

  desc 'a restful api'
  get '/restful_api' do
    render 'restful_api.html'
  end

  desc 'an authenticated and authorized API'
  get '/auth_api' do
    render 'auth_api.html'
  end

  desc 'a media server than handle files'
  get '/media_server' do
    render 'media_server.html'
  end

  desc 'a simple static website'
  get '/simple_website' do
    render 'simple_website.html'
  end

  desc 'an application that able to mount other Rack based applications such as Grape, Sinatra'
  get '/mount_rack_based_app' do
    render 'mount_rack_based_app.html'
  end

  desc 'a rack-app extension'
  get '/extension' do
    render 'extension.html'
  end

  desc 'a cli command for my application'
  get '/cli' do
    render 'cli.html'
  end

  desc 'a controller/app with basic auth'
  get '/basic_auth' do
    render 'basic_auth.html'
  end

end