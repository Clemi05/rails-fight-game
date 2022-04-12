class Fighter < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :hp, presence: true
  validates :attack, presence: true
end
