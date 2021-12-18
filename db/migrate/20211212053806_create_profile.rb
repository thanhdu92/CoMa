class CreateProfile < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.references :user
      t.datetime :starting_date
      t.string :position

      t.timestamps
    end
  end
end
