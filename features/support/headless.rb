require 'capybara/poltergeist'

if ENV['HEADLESS_TEST']
  Capybara.default_driver    = :poltergeist
  Capybara.javascript_driver = :poltergeist

  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(app, window_size: [1280, 1024])
  end
else
  Capybara.default_driver    = :selenium
  Capybara.javascript_driver = :selenium
end
