task delete_to_do_items: :environment do
  ToDoItem.where("created_at <=?", Time.now - 7.days).destroy_all
end