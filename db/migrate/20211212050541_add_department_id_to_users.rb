class AddDepartmentIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :department_id, :bigint
  end
end
