

RSpec.configure do |config|
ENV['RACK_ENV'] = 'test'
ENV['ENVIRONMENT'] = 'test'

require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'simplecov'
require 'simplecov-console'
require './spec/features/web_helpers.rb'
require_relative '.././app.rb'

Capybara.app = SoundAttic

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.before(:each) do
    setup_test_database
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

end
