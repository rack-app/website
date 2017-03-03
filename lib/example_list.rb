module ExampleList
  extend(self)

  def groups_from(app)
    app.router.endpoints.reduce([]) do |links, endpoint|

      if endpoint.request_path =~ /^\/examples\// && endpoint.request_methods.include?(:GET)
        group, desc = endpoint.properties[:route][:description].split(':').map(&:strip)

        links.push(
          {
            href: endpoint.request_path,
            group: group,
            desc: desc
          }
        )
      end

      links
    end.group_by{|link| link[:group] }.freeze
  end

end
