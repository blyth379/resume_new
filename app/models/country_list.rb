class CountryList < ApplicationRecord
    has_many :company_countries, dependent: :destroy
    has_many :user_countries, dependent: :destroy
end
