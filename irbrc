require  'rubygems'
require 'active_record'
require 'logger'

# Show log query in console
if ENV.include?('RAILS_ENV') && !Object.const_defined?('RAILS_DEFAULT_LOGGER')
  Object.const_set('RAILS_DEFAULT_LOGGER', Logger.new(STDOUT))
else
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end

# Load Rails Settings
load File.dirname(__FILE__) + '/.railsrc' if $0 == 'irb' && ENV['RAILS_ENV']

