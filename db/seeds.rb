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


alderaan = Planet.find_by(name: 'Alderaan')
  alderaan.image = 'https://vignette.wikia.nocookie.net/starwars/images/e/e9/AlderaanSystem-TCWAssassin.png/revision/latest?cb=20130513020535'
  alderaan.save

yavin_4 = Planet.find_by(name: 'Yavin IV')
  yavin_4.image = 'https://vignette.wikia.nocookie.net/starwars/images/d/d4/Yavin-4-SWCT.png/revision/latest?cb=20181015023938'
  yavin_4.save

hoth = Planet.find_by(name: 'Hoth')
  hoth.image = 'https://66.media.tumblr.com/6e7ff270d6d120913bc835aa07446aee/tumblr_mtvoc7aV1M1qbwnuho1_1280.jpg'
  hoth.save

dagobah = Planet.find_by(name: 'Dagobah')
  dagobah.image = 'https://free3d.com/imgd/l10/5b5e2e5726be8b60548b4567/6606-planet-dagobah.jpg'
  dagobah.save

bespin = Planet.find_by(name: 'Bespin')
  bespin.image = 'https://vignette.wikia.nocookie.net/starwars/images/2/2c/Bespin_EotECR.png/revision/latest?cb=20170222012550'
  bespin.save

endor = Planet.find_by(name: 'Endor')
  endor.image = 'https://vignette.wikia.nocookie.net/starwars/images/5/50/Endor_FFGRebellion.png/revision/latest?cb=20170529052722'
  endor.save

naboo = Planet.find_by(name: 'Naboo')
  naboo.image = 'https://www.google.com/search?q=naboo+planet&tbm=isch&ved=2ahUKEwiknJ6EyO3nAhUCFVkKHcebDyEQ2-cCegQIABAA&oq=naboo+planet&gs_l=img.3..0j0i7i30l9.53471.54159..54400...0.0..0.215.799.0j2j2......0....1..gws-wiz-img.dy18C2SwS9k&ei=TYZVXuTBDIKq5ALHt76IAg&bih=789&biw=1440&hl=en#imgrc=wuQrgZxQEpJmpM'
  naboo.save

coruscant = Planet.find_by(name: 'Coruscant')
  coruscant.image = 'https://vignette.wikia.nocookie.net/starwars/images/8/84/CoruscantGlobeE1.png/revision/latest?cb=20130123002137'
  coruscant.save

kamino = Planet.find_by(name: 'Kamino')
  kamino.image = 'https://i.ytimg.com/vi/hzkmWxhTJKU/maxresdefault.jpg'
  kamino.save

geonosis = Planet.find_by(name: 'Geonosis')
  geonosis.image = 'https://vignette.wikia.nocookie.net/starwars/images/6/6d/Geonosis_AotC.png/revision/latest?cb=20121231120327'
  geonosis.save


rianna = User.create(username: 'rianna', password: '123')

# ////////TYPES////////
hut = Type.create(name: 'hut')
palace = Type.create(name: 'palace')
castle = Type.create(name: 'castle')
cave = Type.create(name: 'cave')
treehouse = Type.create(name: 'treehouse')
cabana = Type.create(name: 'cabana')
x_wing = Type.create(name: 'x-wing')
cabin = Type.create(name: 'cabin')
igloo = Type.create(name: 'igloo')




# //////LOCATIONS///////

# ///////ALDERAAN//////////
tranquil_hut = Location.create(name: 'Tranquil Hut', image: 'https://40.media.tumblr.com/806deacfae6d547518f242cf693badc9/tumblr_n8b3nv6hDn1sn3ne4o1_500.jpg', type_id: hut.id, planet_id: alderaan.id)
house_of_organa = Location.create(name: 'House of Organa', image: 'https://vignette.wikia.nocookie.net/starwars/images/e/ef/Castle_Organa.png/revision/latest?cb=20150818140835', type_id: palace.id, planet_id: alderaan.id )
forest_cave = Location.create(name: 'Alderaan Forest Cave', image: 'https://www.wallpaperup.com/uploads/wallpapers/2015/04/01/652147/97eff9483949b355f6de716841cc14ff-700.jpg', type_id: cave.id, planet_id: alderaan.id )

# //////YAVIN IV//////////
poe_treehouse = Location.create(name: 'Poe\'s Treehouse', image: 'https://www.tripsavvy.com/thmb/ay-k8x8Hu9biNQw07OQRVIO4KHc=/1600x1067/filters:no_upscale():max_bytes(150000):strip_icc()/treevilla-56a3be985f9b58b7d0d393da.jpg', type_id: treehouse.id, planet_id: yavin_4.id)
jungle_cabana = Location.create(name: 'Lil\' Jungle Cabana', image: 'https://media.glampinghub.com/CACHE/images/accommodations/impeccably-luxurious-cabana-suites-in-costa-rican-jungle-1522059415459/6c1a0f2015d0b2de6cfde557f593b64b.jpg', type_id: cabana.id, planet_id: yavin_4.id)
jungle_hut = Location.create(name: 'Jungle Hut', image: 'https://lh3.googleusercontent.com/proxy/snGZkg1aQMtN_gpljs05aW4raIGWpbRkmahVNJfpXZ-mTUmMYQDgsX89SwV7k0VfCD2UlJn_OCAijSE5u_XJaknp2XpfQsJDOSUa8mmec-Q', type_id: hut.id, planet_id: yavin_4.id)

# ///////HOTH///////

ice_cave = Location.create(name: 'Ice Cave', image: 'https://389181.smushcdn.com/1156046/wp-content/uploads/2018/03/IMG_8955-1600x700.jpg?lossy=1&strip=1&webp=1', type_id: cave.id, planet_id: hoth.id)
ice_castle = Location.create(name: 'Frozen Castle', image: 'https://nuvomagazine.scdn2.secure.raxcdn.com/wp-content/uploads/2019/01/FB-Photo.jpg', type_id: castle.id, planet_id: hoth.id)
igloo = Location.create(name: 'Cute Igloo', image: 'https://ecobnb.com/blog/app/uploads/sites/3/2014/01/Igloo-1-res.jpg', type_id: igloo.id, planet_id: hoth.id)


# ///////DAGOBAH////////
eerie_cabin = Location.create(name: 'Eerie Cabin', image: 'https://i.pinimg.com/originals/81/c9/c7/81c9c73e5db0158ee2a73748eddbe67d.jpg', type_id: cabin.id , planet_id: dagobah.id)
luke_xwing = Location.create(name: 'Lukes Sunken X-Wing', image: 'https://dorksideoftheforce.com/files/2017/09/dagobah-bio-6_62f469f1.jpeg', type_id: x_wing.id, planet_id: dagobah.id)
murky_hut = Location.create(name: 'Murky Hut', image: 'https://cdna.artstation.com/p/assets/images/images/019/649/572/large/piotr-stanczyk-f1.jpg?1564438764', type_id: hut.id, planet_id: dagobah.id)

# //////BESPIN///////
= Location.create(name: '', image: '', type_id: , planet_id: )
= Location.create(name: '', image: '', type_id: , planet_id: )
= Location.create(name: '', image: '', type_id: , planet_id: )

# //////ENDOR////////
= Location.create(name: '', image: '', type_id: , planet_id: )
= Location.create(name: '', image: '', type_id: , planet_id: )
= Location.create(name: '', image: '', type_id: , planet_id: )

# ///////NABOO////////
= Location.create(name: '', image: '', type_id: , planet_id: )
= Location.create(name: '', image: '', type_id: , planet_id: )
= Location.create(name: '', image: '', type_id: , planet_id: )

# ////////CORUSCANT////////
= Location.create(name: '', image: '', type_id: , planet_id: )
= Location.create(name: '', image: '', type_id: , planet_id: )
= Location.create(name: '', image: '', type_id: , planet_id: )

# ///////KAMINO////////
= Location.create(name: '', image: '', type_id: , planet_id: )
= Location.create(name: '', image: '', type_id: , planet_id: )
= Location.create(name: '', image: '', type_id: , planet_id: )


# ////////GEONOSIS////////
= Location.create(name: '', image: '', type_id: , planet_id: )
= Location.create(name: '', image: '', type_id: , planet_id: )
= Location.create(name: '', image: '', type_id: , planet_id: )








# byebug

puts 'Data Seeded! 👻'
