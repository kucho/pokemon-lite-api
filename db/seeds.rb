# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv = CSV.read('./db/initial-data.csv', headers: true)

csv.each do |row|
  t_id = Trainer.find_or_create_by(
    {
      name: row['t_name'],
      gender: row['t_gender'],
      home_region: row['t_region'],
      team_member_status: row['t_team_member'],
      wins: row['wins'],
      losses: row['losses']
    }
  ).id

  p_id = Pokemon.find_or_create_by(
    {
      name: row['name'],
      base_experience: row['base_exp'],
      main_type: row['main_type'],
      main_ability: row['main_ability']
    }
  ).id

  PokemonTrainer.find_or_create_by(trainer_id: t_id, pokemon_id: p_id)
end

puts 'Data ready!'