require 'erubis'
class App < Rack::App

  extend Rack::App::FrontEnd

  layout 'layout.html.erb'

  helpers do

    def example_links
      EXAMPLE_LINK_PATHS
    end

  end

  serve_files_from '/www'

  mount Rack::App::Bootstrap
  mount App::Visitor
  mount App::Examples, to: '/examples'

  EXAMPLE_LINK_PATHS = router.endpoints.reduce({}) do |links, endpoint|

    if endpoint[:request_path] =~ /^\/examples\// && endpoint[:request_method] == 'GET'
      links.merge!({endpoint[:request_path] => endpoint[:description]})
    end

    links
  end

end