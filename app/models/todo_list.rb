class TodoList < ApplicationRecord
  has_many :todo_items

  def self.to_csv  
    attributes = %w[id title description created_at items_to_do]

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |todo_list|
        csv << [
            todo_list.id,
            todo_list.title,
            todo_list.description,
            todo_list.created_at,
            todo_list.todo_items.pluck(:content).join(', ')
        ]
      end
    end
  end
end
