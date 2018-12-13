class UserCountry < ApplicationRecord
  belongs_to :user
  belongs_to :country_list
end
