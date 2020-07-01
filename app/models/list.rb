class List < ApplicationRecord
  # Relationships
  has_many :items, dependent: :destroy

  # validations
  validates :title, presence: true
end
