class AddAttendanceToLectures < ActiveRecord::Migration[6.1]
  def change
    add_reference :lectures, :attendances, index: true
  end
end
