require 'rails_helper'

feature 'User sees todo list' do
  scenario 'user visits home page' do
    create :todo_item, title: 'Buy milk'

    visit todo_items_path

    expect(page).to have_content 'Buy milk'
  end
end
