class CreateTodoLists < ActiveRecord::Migration
  def change
    create_table :todo_lists do |t|
      t.string :contact_email
      t.string :feature_name
      t.integer :osm_id
      t.string :address
      t.string :hours_of_operation
      t.boolean :hours_are_seasonal
      t.string :comments
      t.boolean :fixme_flag
      t.string :link_to_site

      t.timestamps
    end
    add_index :todo_lists, :contact_email
    add_index :todo_lists, :feature_name
  end
end
