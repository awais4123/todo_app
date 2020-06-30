class List < ApplicationRecord
  has_many :items

  # validations
  validates :title, presence: true
end
