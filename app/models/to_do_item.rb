class ToDoItem < ActiveRecord::Base

  belongs_to  :user

  validates :description, length: { minimum: 3 }, presence: true
  validates :user, presence: true

end
