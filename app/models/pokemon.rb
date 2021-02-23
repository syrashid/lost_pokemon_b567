class Pokemon < ApplicationRecord
  validates :name, presence: true
  validates :species, inclusion: { in: %w(Normal Fighting Flying Poison Ground Rock Bug Ghost Fire Water Grass Electric Steel Psychic Ice Dragon Dark) }
  validates :address, presence: true
  validates :found_on, presence: true
end
