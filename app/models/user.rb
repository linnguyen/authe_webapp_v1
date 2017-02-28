class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         :token_authenticatable
  #before_save :ensure_authentication_token
  #attr_accessible :name, :email, :password, :password_confirmation, :remember_me
end
