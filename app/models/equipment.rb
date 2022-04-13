class Equipment < ApplicationRecord

  def equipment_infos
    "#{name} => Attack: +#{attack} - Defense: +#{defense}"
  end
end
