class Fighter < ApplicationRecord
  has_one_attached :photo

  has_many :victories, class_name: 'Fight', foreign_key: :winner_id
  has_many :losses, class_name: 'Fight', foreign_key: :loser_id

  validates :name, length: { maximum: 15 }, uniqueness: true, presence: true
  validates :hp, presence: true, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 250 }
  validates :attack, presence: true, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 40 }
  validates :photo, presence: true

  # Each attack hit with 70% to 100% damage of the fighter's attack
  def attack_damage
    (attack * rand(0.7..1.0)).truncate(2)
  end

  def won_fights
    victories.count
  end

  def lost_fights
    losses.count
  end

  def fighter_infos
    "#{name} => HP: #{hp} - Attack: #{attack}"
  end
end
