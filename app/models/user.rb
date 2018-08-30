class User < ApplicationRecord
  has_one :cart
  has_many :orders

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


    after_create  :welcome_email, :cart_creation

    def welcome_email
       @user = self.email
      TestMailer.with(user: @user).test_email.deliver_now
    end

    def cart_creation
      Cart.create(user_id: self.id)
    end

    # private
    #   def user_params
    #     params.require(:user).permit(:email)
    #   end
end
