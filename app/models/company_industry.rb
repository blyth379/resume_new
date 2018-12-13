class CompanyIndustry < ApplicationRecord
  belongs_to :company
  belongs_to :industry_list
end
