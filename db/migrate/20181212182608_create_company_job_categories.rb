class CreateCompanyJobCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :company_job_categories do |t|
      t.references :company, foreign_key: true
      t.references :job_category_list, foreign_key: true

      t.timestamps
    end
  end
end
