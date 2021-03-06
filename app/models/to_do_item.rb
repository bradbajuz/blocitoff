class ToDoItem < ActiveRecord::Base

  belongs_to  :user

  validates :description, length: { minimum: 3, maximum: 50 }, presence: true
  validates :user, presence: true

  default_scope { order('updated_at DESC') }

end
