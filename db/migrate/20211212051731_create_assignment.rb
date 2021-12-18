class CreateAssignment < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.references :user
      t.references :project
      t.datetime :start_time
      t.datetime :end_time
      t.string :position

      t.timestamps
    end
  end
end
