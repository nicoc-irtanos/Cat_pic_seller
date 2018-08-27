class User < ApplicationRecord
  has_one :cart
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


    after_create  :welcome_email
    def welcome_email
      UserMailer.welcome_email(self).deliver
      redirect_to root_path, alert: "Thank for your registration"
    end
end
