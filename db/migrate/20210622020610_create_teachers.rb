class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.string :teacher_name
      t.string :teacher_type
      t.belongs_to :user
      t.timestamps
    end
  end
end
