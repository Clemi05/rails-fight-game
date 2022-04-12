class Fighter < ApplicationRecord
  has_one_attached :photo

  validates :name, uniqueness: true, presence: true
  validates :hp, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 250 }
  validates :attack, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 40 }
  validates :photo, presence: true
end
