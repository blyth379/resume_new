class IndustryList < ApplicationRecord
    has_many :company_industry, dependent: :destroy
    has_many :user_industry, dependent: :destroy
end
