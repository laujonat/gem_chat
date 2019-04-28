# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

SERVER_NAMES = 10.times.map { Faker::Internet.domain_word }

SPLIT = 0.4
OFFSET = SERVER_NAMES.length * SPLIT

SERVER_USERS = {
  'mr_apollo@example.com' => SERVER_NAMES[0, OFFSET],
  'ms_apollo@example.com' => SERVER_NAMES[OFFSET..-1]
}.freeze

SERVER_USERS.each do |email, servers|
  user = User.new(email: email, screenname: Faker::Games::WorldOfWarcraft.hero, password: 'secret')
  servers.each { |name| user.servers.build(name: name) }
  user.save!
end
