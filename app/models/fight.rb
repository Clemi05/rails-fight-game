class Fight < ApplicationRecord
  belongs_to :winner, class_name: 'Fighter', dependent: :destroy
  belongs_to :loser, class_name: 'Fighter', dependent: :destroy
end
