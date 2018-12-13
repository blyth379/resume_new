class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  # validates :first_name, :family_name, :gender, :nationality, presence: true, on: [:update]



  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :langs, dependent: :destroy
  has_many :educations, dependent: :destroy
  has_many :user_countries, dependent: :destroy
  has_many :user_industries, dependent: :destroy
  has_many :user_job_categories, dependent: :destroy
  accepts_nested_attributes_for :educations, allow_destroy: true
end
