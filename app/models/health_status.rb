class HealthStatus < ApplicationRecord
  belongs_to :day
  has_one_attached :image

end
