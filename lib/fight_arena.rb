module FightArena
  mattr_accessor :fighter1_attacks, :fighter2_attacks
  mattr_accessor :fighter1, :fighter2

  class << self
    # This method calculates the output of the fight between two fighters.
    # Input : fighter1, Fighter who will start the round
    #         fighter2, oposant of fighter1

    def result(fighter1, fighter2)
      self.fighter1_attacks = []
      self.fighter2_attacks = []
      self.fighter1 = fighter1
      self.fighter2 = fighter2
      fighting_round while fighter1.hp >= 0 && fighter2.hp >= 0
      winner, loser = calculate_result
      Fight.create(winner: winner[0], loser: loser[0])
      serialize(winner, loser)
    end

    private

    def fighting_round
      fighter1_attacks << fighter1.attack_damage
      fighter2.hp -= fighter1_attacks.last
      return if fighter2.hp < 1

      fighter2_attacks << fighter2.attack_damage
      fighter1.hp -= fighter2_attacks.last
    end

    def calculate_result
      winner = fighter1.hp > fighter2.hp ? [fighter1, fighter1_attacks] : [fighter2, fighter2_attacks]
      loser = fighter1.hp < fighter2.hp ? [fighter1, fighter1_attacks] : [fighter2, fighter2_attacks]
      [winner, loser]
    end

    def serialize(winner, loser)
      {
        winner: { fighter: winner[0] },
        loser: { fighter: loser[0] }
      }
    end

  end
end
