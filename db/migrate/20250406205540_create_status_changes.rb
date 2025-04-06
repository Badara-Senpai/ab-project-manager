class CreateStatusChanges < ActiveRecord::Migration[7.1]
  def change
    create_table :status_changes do |t|
      t.references :project, null: false, foreign_key: true
      t.string :previous_status
      t.string :new_status

      t.timestamps
    end
  end
end
