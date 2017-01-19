require 'rails_helper'

feature 'User adds todo item' do
  scenario 'user clicks add item button and sees form' do
    visit todo_items_path
    click_button 'Add item'
    expect(page).to have_current_path(new_todo_item_path)
    expect(page).to have_content 'Add item'
    expect(page).to have_field 'Title'
    expect(page).to have_button 'Add'
  end

  scenario 'user adds todo item' do
    visit new_todo_item_path
    fill_in 'Title', with: 'Sleep early'
    click_button 'Add'
    expect(page).to have_current_path(todo_items_path)
    expect(page).to have_content 'Sleep early'
  end
end
