class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.references :department
      t.string :name

      t.timestamps
    end
  end
end
