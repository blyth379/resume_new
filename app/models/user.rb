class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  # validates :first_name, :family_name, :gender, :nationality, presence: true, on: [:update]



  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :lang, dependent: :destroy
  has_many :education, dependent: :destroy
  has_many :user_country, dependent: :destroy
  has_many :user_industry, dependent: :destroy
  has_many :user_job_category, dependent: :destroy
  accepts_nested_attributes_for :education, allow_destroy: true
end
