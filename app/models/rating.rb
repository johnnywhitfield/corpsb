class Rating < ActiveRecord::Base
  belongs_to :review
  belongs_to :category
end
