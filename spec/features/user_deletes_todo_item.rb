require 'rails_helper'

feature 'User deletes todo item' do
  scenario 'user finishes todo item and removes it from the list' do
    todo_item = create :todo_item, title: 'Create todo app'
    create :todo_item, title: 'Sleep early'

    visit todo_items_path

    click_button "DELETE"
    find("##{todo_item.id}").click

    expect(page).to_not have_content('Create todo app')
  end
end
