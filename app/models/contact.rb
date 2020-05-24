class Contact < ApplicationRecord
  validates :phone, phone: true
  validates :email, email: true
  validates :message, length: { minimum: 10 }
end
