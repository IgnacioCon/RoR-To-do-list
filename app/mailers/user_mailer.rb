class UserMailer < ApplicationMailer
  default from: 'notifications@todo.com'

  def welcome_email
    @user = params[:user]
    @url = 'http://localhost.com/users/login'
    mail(to: @user.email, subject: 'Welcome to TODO App')
  end
  
  def todolist_email(user, todo_lists)
    @user = user
    @todo_lists = todo_lists
    @url = 'http://localhost.com/lists'
    mail(to: @user.email, subject: 'Your lists for this week!') do |format|
      format.html
    end
  end
end
