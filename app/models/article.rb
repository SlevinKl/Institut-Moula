class Article < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  validates :title, :content, :date, :category, presence: true
end
