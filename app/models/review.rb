class Review < ApplicationRecord
  belongs_to :restaurant

  validates_presence_of :rating, :content
  validates :rating, numericality: { only_integer: true }
end
