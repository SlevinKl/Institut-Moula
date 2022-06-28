class Prestation < ApplicationRecord
  belongs_to :user
  validates :title, :content, :price, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
