class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.belongs_to :review, index: true
      t.belongs_to :category, index: true
      t.integer :rating

      t.timestamps null: false
    end
    add_foreign_key :ratings, :reviews
    add_foreign_key :ratings, :categories
  end
end
