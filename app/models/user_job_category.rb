class UserJobCategory < ApplicationRecord
  belongs_to :user
  belongs_to :job_category_list
end
