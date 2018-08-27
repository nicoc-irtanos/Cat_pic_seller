class UserMailer < ApplicationMailer
    default from: 'bellup17@gmail.com'

  def welcome_email(user)
    # @user = params[:user]
    @user = user
    @url  = 'https://giphy.com/gifs/JIX9t2j0ZTN9S'
    mail to: user.email, subject: 'Welcome to our fabulous site'
  end


end
