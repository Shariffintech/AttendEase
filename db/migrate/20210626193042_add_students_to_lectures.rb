class AddStudentsToLectures < ActiveRecord::Migration[6.1]
  def change
    add_reference :students, :lectures, foreign_key: true
  end
end
