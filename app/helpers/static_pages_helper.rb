module StaticPagesHelper

    def mail
      UserMailer.welcome_email.deliver_now

    end
end
