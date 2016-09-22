class App::Examples < App::Visitor

  desc 'core: simple api'
  get '/simple_api' do
    render 'simple_api.html'
  end

  desc 'core: restful api'
  get '/restful_api' do
    render 'restful_api.html'
  end

  desc 'core: before and after block'
  get '/hooks' do
    render 'hooks.html'
  end

  desc 'core: multiple format support'
  get '/forms' do
    render 'forms.html'
  end

  desc 'core: middlewares'
  get '/middleware' do
    render 'middleware.html'
  end

  desc 'core: endpoint specific middlewares'
  get '/next_endpoint_middlewares' do
    render 'next_endpoint_middlewares.html'
  end

  desc 'core: stream response'
  get '/stream' do
    render 'stream.html'
  end

  desc 'bundled extensions: logger'
  get '/logger' do
    render 'logger.html'
  end

  desc 'core: redirect request to somewhere else'
  get '/redirect' do
    render 'redirect.html'
  end

  desc 'auth: escher auth'
  get '/escher' do
    render 'escher.html'
  end

  desc 'stream: media server than handle files'
  get '/media_server' do
    render 'media_server.html'
  end

  desc 'stream: serve file from server'
  get '/file_serving' do
    render 'file_serving.html'
  end

  desc 'stream: receive payload stream and handle'
  get '/payload_stream' do
    render 'payload_stream.html'
  end

  desc 'front end: simple static website'
  get '/simple_website' do
    render 'simple_website.html'
  end

  desc 'core: an application that able to mount other Rack based applications such as Grape, Sinatra or Rails'
  get '/mount_rack_based_app' do
    render 'mount_rack_based_app.html'
  end

  desc 'extensions: create rack-app extension'
  get '/extension' do
    render 'extension.html'
  end

  desc 'terminal: cli command for my application'
  get '/cli' do
    render 'cli.html'
  end

  desc 'auth: controller/app with basic auth'
  get '/basic_auth' do
    render 'basic_auth.html'
  end

  desc 'back ground jobs: asyncron scalable solution for non-blocking background processing'
  get '/rack_app_worker' do
    render 'rack_app_worker.html'
  end

  desc 'core: resources as mountable applications'
  get '/mounting' do
    render 'mounting.html'
  end

  desc 'auth: validate query params'
  get '/validate_params' do
    render 'validate_params.html'
  end

  desc 'utils: create path based on project location'
  get '/file_path' do
    render 'file_path.html'
  end
end
