class CreateCompanyCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :company_countries do |t|
      t.references :company, foreign_key: true
      t.references :country_list, foreign_key: true

      t.timestamps
    end
  end
end
