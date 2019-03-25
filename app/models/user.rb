class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :groups
  has_many :users, class_name: "Friend", foreign_key: "user_id"
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
