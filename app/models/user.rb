class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true, uniqueness: { case_sensitive: false, message: "já está cadastrado" }
  validates :email, presence: true, uniqueness: { case_sensitive: false, message: "já está cadastrado" }, format: { with: URI::MailTo::EMAIL_REGEXP, message: "não é válido" } 
  validates :password, presence: true, confirmation: true, length: {minimum:6}
  
end
