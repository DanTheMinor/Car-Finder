require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exception, false)
require 'pry'

describe('The vehicle registration path', {:type => :feature}) do
  it('Click link to go to list or add to list, click link to return details about list, fill form to add to list') do
    visit('/')
    click_link('See Vehicle List')
    expect(page).to have_content('Vehicles')
  end
end
