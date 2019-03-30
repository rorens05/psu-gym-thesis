class Exercise < ApplicationRecord
  belongs_to :routine 
  has_one_attached :image
end
