class CreateIndustryLists < ActiveRecord::Migration[5.2]
  def change
    create_table :industry_lists do |t|
      t.string :industry
      t.string :industry_jp

      t.timestamps
    end
  end
end
