require 'bundler'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__),'..','rack-app','lib'))
require 'rack/app'
require 'rack/app/front_end'

Bundler.require
Loader.autoload

require 'erubis'
require 'tilt/erubis'