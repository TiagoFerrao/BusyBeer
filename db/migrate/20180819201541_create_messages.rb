class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :content
      t.boolean :read
      t.integer :created_by_id
      t.integer :sent_to_id
      t.timestamps
    end
  end
end
