class User < ApplicationRecord
  has_one_attached :avatar
  has_many :articles, dependent: :destroy
  has_many :prestations, dependent: :destroy

  validates :first_name, :last_name, :address, presence: true
  validates :admin, presence: true
  validates :phone, presence: true, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
