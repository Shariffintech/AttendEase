class AddUserToLectures < ActiveRecord::Migration[6.1]
  def change
    add_reference :lectures, :user, index: true
  end
end
