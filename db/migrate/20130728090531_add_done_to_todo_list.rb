class AddDoneToTodoList < ActiveRecord::Migration
	class TodoList < ActiveRecord::Base
	end

  def change
    add_column :todo_lists, :done, :boolean
    TodoList.reset_column_information
    reversible do |dir|
    	dir.up { TodoList.update_all done: false }
    end
  end
end
