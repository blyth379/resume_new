class CountryList < ApplicationRecord
    has_many :company_country, dependent: :destroy
    has_many :user_country, dependent: :destroy
end
