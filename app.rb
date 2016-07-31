require 'erubis'
class App < Rack::App

  apply_extensions :front_end

  layout 'layout.html.erb'

  helpers do

    def example_groups
      ExampleList.groups_from(App)
    end

  end

  serve_files_from '/www'

  mount App::Visitor
  mount App::Examples, to: '/examples'
  mount App::Sandbox, to: '/sandbox'

end
