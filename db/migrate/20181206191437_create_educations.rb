class CreateEducations < ActiveRecord::Migration[5.2]
  def change
    create_table :educations do |t|
      t.string :education_type
      t.string :school_name
      t.date :enroll_in
      t.date :graduate_in
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
