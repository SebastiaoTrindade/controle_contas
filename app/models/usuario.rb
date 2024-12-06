class Usuario < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: true, presence: true  
  
end
