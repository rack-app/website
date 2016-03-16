require './bootstrap'
puts App.router.show_endpoints if ENV['show'].to_s.include?('routes')
run App