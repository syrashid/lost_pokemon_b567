class Pokemon < ApplicationRecord
  TYPES = %w(Normal Fighting Flying Poison Ground Rock Bug Ghost Fire Water Grass Electric Steel Psychic Ice Dragon Dark)
  validates :name, presence: true
  validates :species, inclusion: { in: TYPES }
  validates :address, presence: true
  validates :found_on, presence: true

  def found_days_ago
    (Date.today - self.found_on).to_i
  end
end
