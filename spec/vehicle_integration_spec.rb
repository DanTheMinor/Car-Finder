require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exception, false)
require 'pry'

describe('The vehicle registration path', {:type => :feature}) do
  it('links to vehicle list or add vehicle') do
    visit('/')
    click_link('See Vehicle List')
    expect(page).to have_content('Vehicles')
  end

  it('submits form, shows success page') do
    visit('/vehicles/new')
    fill_in('make', :with => 'ford')
    fill_in('model', :with => 'escort')
    fill_in('year', :with => '2010')
    click_button('add_vehicle')
    expect(page).to have_content('Successly added escort')
  end

  it('shows specific vehicle information after clicking vehicle name') do
  visit('/vehicles')
  click_link('escort')
  expect(page).to have_content('Here are the stats of the selected car:')
  end
end
