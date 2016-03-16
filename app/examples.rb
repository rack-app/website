class App::Visitor::Examples < App::Visitor

  # get '/' do
  #   render 'index.html.erb'
  # end
  
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

end