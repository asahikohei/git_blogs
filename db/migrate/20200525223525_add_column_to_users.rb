class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :birthday, :string
    add_column :users, :hobby, :text
    add_column :users, :food, :string
    add_column :users, :years_old, :integer
  end
end
