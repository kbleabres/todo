class TodoItemsController < ApplicationController
  def index
    @todo_items = TodoItem.all
  end

  def new
    @todo_item = TodoItem.new
  end

  def create
    @todo_item = TodoItem.create(todo_item_params)
    redirect_to todo_items_path
  end

  def destroy
    TodoItem.find(params[:id]).destroy
    redirect_to todo_items_path
  end

  def update
    @todo_item = TodoItem.find(params[:id])
    @todo_item.update_attributes(complete: !@todo_item.complete?)
    redirect_to todo_items_path
  end

  private
  def todo_item_params
    params.require(:todo_item).permit(:title, :id)
  end
end
