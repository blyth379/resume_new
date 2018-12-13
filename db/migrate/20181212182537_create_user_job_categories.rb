class CreateUserJobCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :user_job_categories do |t|
      t.references :user, foreign_key: true
      t.references :job_category_list, foreign_key: true

      t.timestamps
    end
  end
end
