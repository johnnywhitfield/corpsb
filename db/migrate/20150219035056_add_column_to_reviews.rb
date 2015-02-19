class AddColumnToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :review_text, :text
  end
end
