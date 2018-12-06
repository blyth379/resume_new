class CreateLangs < ActiveRecord::Migration[5.2]
  def change
    create_table :langs do |t|
      t.references :user, foreign_key: true
      t.references :lang_list, foreign_key: true

      t.timestamps
    end
  end
end
