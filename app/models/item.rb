class Item < ApplicationRecord
  # Relationships
  belongs_to :list

  # validations
  validates :title, presence: true
end
