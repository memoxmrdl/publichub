require 'rails_helper'

describe 'Visit to home', type: :feature do
  it 'visit root_path' do
    visit root_url

    expect(page).to have_selector('.home.index')
  end
end
