class JobCategoryList < ApplicationRecord
    has_many :company_job_category, dependent: :destroy
    has_many :user_job_category, dependent: :destroy
end
