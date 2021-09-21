class UserMailer < ApplicationMailer
  default from: 'everybody@appacademy.io'

  def welcome_email
    @user = user
    @url = "localhost:3000/session/new"
    mail(to: @user.username, subject:"Welcome to 99 cats!!!")
  end
end
