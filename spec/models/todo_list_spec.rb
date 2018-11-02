require 'rails_helper'

  RSpec.describe TodoList, type: :model do 
    let(:todo_list) {TodoList.new(title: 'Test', description: 'This is a test')}

    describe 'create a new list' do 
      it 'creates a new list' do
        expect(todo_list).to be_instance_of(TodoList)
      end
    end
    
  end