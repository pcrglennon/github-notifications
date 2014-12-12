require 'bundler/setup'
Bundler.require(:default)
Dotenv.load

require './lib/notification'
require './lib/app'
