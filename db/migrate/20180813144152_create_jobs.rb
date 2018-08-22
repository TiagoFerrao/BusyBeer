class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :address
      t.datetime :time
      t.text :description
      t.string :title
      t.float :latitude
      t.float :longitude
      t.integer :duration
      t.integer :price
      t.references :category
      t.references :user
      t.timestamps
    end
  end
end
