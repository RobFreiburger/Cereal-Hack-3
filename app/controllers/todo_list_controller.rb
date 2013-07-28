class TodoListController < ApplicationController
  
  def index
  	@tasks = TodoList.where(done: false).order('updated_at DESC')
  end

end