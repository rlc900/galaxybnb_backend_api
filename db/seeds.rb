require 'rest-client'

rm = RestClient.get 'https://swapi.co/api/planets'
rm_array = JSON.parse(rm)['results']

rm_array.each do |planet|
 Planet.create(
 name: planet['name'],
 climate: planet['climate'],
 terrain: planet['terrain']
 )
end

rianna = User.create(username: 'rianna', password: '123')







# byebug

puts 'Data Seeded! 👻'
