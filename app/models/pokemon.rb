class Pokemon < ApplicationRecord
   has_many :pokemon_trainer
   has_many :trainers, through: :pokemon_trainer
end
