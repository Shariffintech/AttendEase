class CreateLectures < ActiveRecord::Migration[6.1]
  def change
    create_table :lectures do |t|
      t.string :name
      t.string :description
      t.integer :classroom_number
      t.time :duration

      
  
    end
  end
end
