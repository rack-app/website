require './bootstrap'

use Rack::HostRedirect,
    'rack-app-website.herokuapp.com' => 'www.rack-app.com',
    'rack-app.com' => 'www.rack-app.com'

run App