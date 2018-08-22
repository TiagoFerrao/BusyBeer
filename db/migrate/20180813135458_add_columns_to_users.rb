class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :address, :text
    add_column :users, :birthday, :date
    add_column :users, :phone, :string
    add_column :users, :student, :boolean, default: false
  end
end
