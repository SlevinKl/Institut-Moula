class Prestation < ApplicationRecord
  belongs_to :user
  CATEGORIES = %w[Mains Pieds Corp Visage Epilations]

  validates :title, :content, :price, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
