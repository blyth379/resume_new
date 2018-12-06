class CreateJobCategoryLists < ActiveRecord::Migration[5.2]
  def change
    create_table :job_category_lists do |t|
      t.string :job_category
      t.string :job_category_jp

      t.timestamps
    end
  end
end
