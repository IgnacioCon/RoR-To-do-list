require 'sidekiq-scheduler'

class MailWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(*args)
    users = User.all
    users.each do |user|
      todo_lists = TodoList.where(userid: user.id)
      UserMailer.todolist_email(user, todo_lists).deliver_now
    end
  end
end
