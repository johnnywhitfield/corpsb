class Review < ActiveRecord::Base
  has_many :ratings
  accepts_nested_attributes_for :ratings
  belongs_to :company
  belongs_to :user
  validates_presence_of :review_text

end
