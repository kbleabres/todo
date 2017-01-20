require 'rails_helper'

feature 'user marks todo item as complete' do
  scenario 'successfully' do
    create :todo_item
    visit todo_items_path

    click_button 'Mark as done'

    expect(page).to have_content 'Mark as undone'
  end

  scenario 'successfully' do
    create :todo_item, complete: true
    visit todo_items_path

    click_button 'Mark as undone'

    expect(page).to have_content 'Mark as done'
  end
end
