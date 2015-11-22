require 'rails_helper'

feature 'Creating Cars' do
  scenario 'can create a car' do
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1967'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    expect(page).to have_content('1967 Ford Mustang created')
  end

  scenario 'can create a second car' do
    visit '/'

    expect(page).to have_link('New Car')

    click_link 'New Car'

    fill_in 'Make', with: 'Toyota'
    fill_in 'Model', with: 'Tacoma'
    fill_in 'Year', with: '2008'
    fill_in 'Price', with: '25000'

    click_button 'Create Car'

    expect(page).to have_content('2008 Toyota Tacoma created')

  end
end
