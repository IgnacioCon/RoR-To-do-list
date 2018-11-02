require 'rails_helper'

RSpec.describe TodoItemsController, type: :controller do 
  let(:todo_item) {TodoItem.new(content: 'Test')}
  describe "Create" do
    it "creates a new todo item" do 
      expect(todo_item).to be_instance_of(TodoItem)
    end
  end

  
end