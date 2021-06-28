class AddAttendanceToLectures < ActiveRecord::Migration[6.1]
  def change
    add_reference :attendances, :lectures, foreign_key: true
  end
end