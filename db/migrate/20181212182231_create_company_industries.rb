class CreateCompanyIndustries < ActiveRecord::Migration[5.2]
  def change
    create_table :company_industries do |t|
      t.references :company, foreign_key: true
      t.references :industry_list, foreign_key: true

      t.timestamps
    end
  end
end
