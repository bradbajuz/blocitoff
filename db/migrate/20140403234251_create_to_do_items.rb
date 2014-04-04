class CreateToDoItems < ActiveRecord::Migration
  def change
    create_table :to_do_items do |t|
      t.string :description
      t.boolean :complete
      t.references :user

      t.timestamps
    end
  end
end
