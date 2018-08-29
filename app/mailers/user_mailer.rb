class UserMailer < ApplicationMailer
  helper :application # gives access to all helpers defined within `application_helper`.
    include Devise::Controllers::UrlHelpers # Optional. eg. `confirmation_url`
    default template_path: 'devise/mailer' # to make sure that your mailer uses the devise views

    default from: 'bellup17@gmail.com'

  def welcome_email(user)
    @user = user
    @url  = 'https://giphy.com/gifs/JIX9t2j0ZTN9S'
    mail to: user.email, subject: 'Welcome to our fabulous site'
  end


end
