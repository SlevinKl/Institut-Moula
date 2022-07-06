class Prestation < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  CATEGORIES = %w[Visage Corp Mains Pieds Epilations]

  validates :title, :content, :price, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
