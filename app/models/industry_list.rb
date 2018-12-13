class IndustryList < ApplicationRecord
    has_many :company_industries, dependent: :destroy
    has_many :user_industries, dependent: :destroy
end
