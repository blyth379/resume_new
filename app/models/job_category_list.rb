class JobCategoryList < ApplicationRecord
    has_many :company_job_categories, dependent: :destroy
    has_many :user_job_categories, dependent: :destroy
end
