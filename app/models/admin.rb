class Admin < ApplicationRecord
  acts_as_paranoid
  has_secure_password

  validates :email,
            uniqueness_without_deleted: true,
            email_format: true

  validates :password,
            length: { minimum: 8 },
            confirmation: true

  validates :password_confirmation,
            presence: true
end
