require 'erubis'
class App < Rack::App

  apply_extensions :front_end

  layout 'layout.html.erb'

  helpers do

    def example_groups
      EXAMPLE_GROUPS
    end

  end

  serve_files_from '/www'

  mount Rack::App::Bootstrap
  mount App::Visitor
  mount App::Examples, to: '/examples'
  mount App::Sandbox, to: '/sandbox'

  EXAMPLE_GROUPS = router.endpoints.reduce([]) do |links, endpoint|

    if endpoint[:request_path] =~ /^\/examples\// && endpoint[:request_method] == 'GET'
      group, desc = endpoint[:properties][:description].split(':').map(&:strip)

      links.push(
        {
          href: endpoint[:request_path],
          group: group,
          desc: desc
        }
      )
    end

    links
  end.group_by{|link| link[:group] }.freeze

end
