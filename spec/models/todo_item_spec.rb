require 'rails_helper'

RSpec.describe TodoItem, type: :model do
    let(:todo_item) {TodoItem.new(content: 'Test')}
    
    it "is completed?" do
      expect(todo_item.completed?).to be_falsey
    end

end