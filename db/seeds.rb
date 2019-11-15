10.times do 
  Artist.create(
    name: Faker::Games::SuperSmashBros.fighter,
    avatar: Faker::Games::LeagueOfLegends.champion , 
    age: Faker::Number.within(range: 15..40)
  )
end 