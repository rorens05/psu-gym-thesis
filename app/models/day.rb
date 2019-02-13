class Day < ApplicationRecord
  belongs_to :user
  validates_uniqueness_of :date_created, :scope => :user_id
  has_many :health_statuses
end
