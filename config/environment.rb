# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# Allow image upload

require "carrierwave/orm/activerecord"