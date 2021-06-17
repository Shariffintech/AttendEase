class AddUserToAttendance < ActiveRecord::Migration[6.1]
  def change
    add_reference :attendances, :user, index: true
  end
end
