class Fight < ApplicationRecord
  belongs_to :winner, class_name: 'Fighter', autosave: true
  belongs_to :loser, class_name: 'Fighter', autosave: true
end
