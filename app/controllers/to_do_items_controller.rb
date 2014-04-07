class ToDoItemsController < ApplicationController
  def index
    @to_do_item = ToDoItem.new
    @to_do_items = ToDoItem.all
    @to_do_items = current_user.to_do_items
  end
end
