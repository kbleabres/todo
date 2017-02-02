class CompletionsController < ApplicationController
  def create
    todo_item = TodoItem.find(params[:todo_item_id])

    todo_item.update(completed_at: Time.current)

    redirect_to todo_items_path
  end
end
