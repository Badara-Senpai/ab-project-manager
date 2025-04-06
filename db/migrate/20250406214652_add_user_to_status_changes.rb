class AddUserToStatusChanges < ActiveRecord::Migration[7.1]
  def change
    add_reference :status_changes, :user, null: false, foreign_key: true
  end
end
