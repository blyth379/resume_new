class CompanyCountry < ApplicationRecord
  belongs_to :company
  belongs_to :country_list
end
