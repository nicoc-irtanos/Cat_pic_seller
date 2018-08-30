class TestMailer < ApplicationMailer
  default from: 'bellup17@gmail.com'

  def test_email
    @user = params[:user]
    @url  = 'https://www.thehackingproject.org/week/9/day/3'
    mail(to: "dimitri.kiavue@gmail.com", subject: 'Welcome to My Awesome Site')
  end

end
