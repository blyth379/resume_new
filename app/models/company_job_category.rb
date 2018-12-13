class CompanyJobCategory < ApplicationRecord
  belongs_to :company
  belongs_to :job_category_list
end
