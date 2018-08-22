class AddSpecificsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :work_place, :string
    add_column :users, :profession, :string
    add_column :users, :degree, :string
  end
end
