ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :adress                   => 'in-v3.mailjet.com',
  :port                     => '587',
  :authentication           => :plain,
  :user_name                => 'acf59d495926c82c5d619c4f979d2ca6',
  :password                 => '1ab0e1be3d62a1cdf0772bc3f56b5601',
  :domain                   => 'localhost',
  :enable_starttls_auto     =>  true
}
