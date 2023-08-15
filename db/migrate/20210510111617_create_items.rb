class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :user_id

      t.timestamps
    end
  end
end
