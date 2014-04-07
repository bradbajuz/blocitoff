class ToDoItem < ActiveRecord::Base

  belongs_to  :user

  def days_left
    Time.now - created_at
    # where("created_at <= ?", Time.now - 7.days).order("created_at asc")
  end

end
