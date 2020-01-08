class User < ApplicationRecord
  before_save :email_downcase

  validates :email, presence: true, length: { maximum: Settings.max_email },
                    format: { with: Settings.email_regex },
                    uniqueness: { case_sensitive: false }
  validates :name, presence: true, length: { maximum: Settings.max_name }
  validates :password, presence: true, length: { minimum: Settings.min_pass }

  has_secure_password

  private

   def email_downcase
     email.downcase!
   end
end
