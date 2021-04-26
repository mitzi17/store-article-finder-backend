class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :name
      t.integer :number
      t.float :price
      t.string :category
      t.string :size
      t.belongs_to :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
