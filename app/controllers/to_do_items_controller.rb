class ToDoItemsController < ApplicationController
  def index
    @to_do_item = ToDoItem.new
    @to_do_items = ToDoItem.all
    @to_do_items = current_user.to_do_items

    authorize @to_do_item
  end

  def create
    @to_do_item = ToDoItem.new(to_do_item_params)
    # @to_do_item = current_user.to_do_items.build(to_do_item_params)
    @to_do_item.user = current_user

    authorize @to_do_item

    if @to_do_item.save
      redirect_to to_do_items_path, notice: "Item was saved successfully."
    else
      flash[:error] = "Error creating todo. Please try again."
      # puts "*** #{@to_do_item.errors.to_yaml}"
      @to_do_items = current_user.to_do_items
      render "to_do_items/index"
    end
  end

  def to_do_item_params
    params.require(:to_do_item).permit(:description)
  end
end
