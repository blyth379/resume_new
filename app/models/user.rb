class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  validates :first_name, :family_name, :gender, :nationality, presence: true, on: [:edit, :update]



  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :lang
end
