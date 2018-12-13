class CreateCountryLists < ActiveRecord::Migration[5.2]
  def change
    create_table :country_lists do |t|
      t.string :country
      t.string :country_jp

      t.timestamps
    end
  end
end
