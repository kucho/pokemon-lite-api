class Pokemon < ApplicationRecord
   has_many :pokemon_trainers
   has_many :trainers, through: :pokemon_trainers

   validates :name, presence: true, uniqueness: true
   validates :main_ability, presence: true
   validates :main_type,
             inclusion: { in: ['bug', 'electric', 'fairy',
                               'fighting', 'fire', 'flying',
                               'grass', 'ground', 'ice',
                               'normal', 'poison', 'psychic',
                               'rock', 'steel', 'water']}
end
