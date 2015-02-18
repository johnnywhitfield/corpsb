class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to :company, index: true
      t.belongs_to :user, index: true

      t.text :review
      t.timestamps null: false
    end
    add_foreign_key :reviews, :companies
    add_foreign_key :reviews, :users
  end
end
