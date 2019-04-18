class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :messages, dependent: :destroy

  # attr_accessor :skip_password_validation  # virtual attribute to skip password validation while saving

  # # @user.skip_password_validation = true
  # # @user.save

  # protected

  # def password_required?
  #   return false if skip_password_validation
  #   super
  # end

end
