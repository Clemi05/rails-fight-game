class Fighter < ApplicationRecord
  has_one_attached :photo

  has_many :victories, foreign_key: :winner_id
  has_many :losses, foreign_key: :loser_id

  validates :name, length: { maximum: 15 }, uniqueness: true, presence: true
  validates :hp, presence: true, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 250 }
  validates :attack, presence: true, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 40 }
  validates :photo, presence: true
end
