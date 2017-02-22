class CompletionsController < ApplicationController
  def create
    todo_item = TodoItem.find(params[:todo_item_id])
    todo_item.update_attributes(completed_at: Time.now)
    redirect_to todo_items_path
  end
end
