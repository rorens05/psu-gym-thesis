class Routine < ApplicationRecord
  has_one_attached :image
  has_many :exercises, dependent: :destroy
  has_many :user_routines, dependent: :destroy
end
