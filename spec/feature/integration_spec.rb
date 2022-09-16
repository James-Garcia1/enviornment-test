# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book: ', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: '20.00'
    fill_in "Published", with: '1999-01-31'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end


#title
  scenario 'no title' do
    visit new_book_path
    fill_in 'Title', with: ''
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: '20.00'
    fill_in "Published", with: '1999-01-31'
    click_on 'Create Book'
    visit books_path
    expect(page).not_to have_content('harry potter')
  end

#author
  scenario 'no author' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: ''
    fill_in 'Price', with: '20.00'
    fill_in "Published", with: '1999-01-31'
    click_on 'Create Book'
    visit books_path
    expect(page).not_to have_content('J.K. Rowling')
  end

#price
  scenario 'no price' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: ''
    fill_in "Published", with: '1999-01-31'
    click_on 'Create Book'
    visit books_path
    expect(page).not_to have_content('20.00')
  end

#date
  scenario 'no date' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: '20.00'
    fill_in "Published", with: ''
    click_on 'Create Book'
    visit books_path
    expect(page).not_to have_content('1999-01-31')
  end
end