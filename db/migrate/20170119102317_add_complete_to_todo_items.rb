class AddCompleteToTodoItems < ActiveRecord::Migration[5.0]
  def change
    add_column :todo_items, :complete, :boolean, :default => false
  end
end
