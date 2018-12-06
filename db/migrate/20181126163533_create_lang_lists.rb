class CreateLangLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lang_lists do |t|
      
      t.string "lang"
      t.string "lang_jp"

      t.timestamps
    end
  end
end
