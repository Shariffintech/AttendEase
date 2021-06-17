class Attendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances do |t|
      t.string :student_name
      t.integer :student_id
      t.timestamps
    end
  end
end