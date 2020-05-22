class Trainer < ApplicationRecord
  has_many :pokemon_trainers
  has_many :pokemons, through: :pokemon_trainers

  validates :name, presence: true, uniqueness: true
  validates :gender, presence: true
  validates :team_member_status, inclusion: { in: [true, false] }
  validates :wins, :losses, numericality: { greater_than_or_equal_to: 0 }
end
