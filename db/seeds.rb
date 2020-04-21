# require 'rest-client'
Planet.destroy_all
Type.destroy_all
Location.destroy_all


starwars_data = RestClient.get('https://swapi.py4e.com/api/planets/')

planet_array = JSON.parse(starwars_data)['results']

planet_array.each do |planet|
 Planet.create(
 name: planet['name'],
 climate: planet['climate'],
 terrain: planet['terrain']
 )
end


alderaan = Planet.find_by(name: 'Alderaan')
  alderaan.image = 'https://res.cloudinary.com/dbnxoqlud/image/upload/v1583337142/alderaan_dguedb.png'
  alderaan.save

yavin_4 = Planet.find_by(name: 'Yavin IV')
  yavin_4.image = 'https://res.cloudinary.com/dbnxoqlud/image/upload/v1583338159/yavin_4_d643l4.png'
  yavin_4.save

hoth = Planet.find_by(name: 'Hoth')
  hoth.image = 'https://res.cloudinary.com/dbnxoqlud/image/upload/v1583338146/hoth_b7rivv.png'
  hoth.save

dagobah = Planet.find_by(name: 'Dagobah')
  dagobah.image = 'https://res.cloudinary.com/dbnxoqlud/image/upload/v1583338374/dagobah_e7ht3q.png'
  dagobah.save

bespin = Planet.find_by(name: 'Bespin')
  bespin.image = 'https://res.cloudinary.com/dbnxoqlud/image/upload/v1583338375/bespin_lnichi.png'
  bespin.save

endor = Planet.find_by(name: 'Endor')
  endor.image = 'https://res.cloudinary.com/dbnxoqlud/image/upload/v1583338134/Endor_swp5fj.png'
  endor.save

naboo = Planet.find_by(name: 'Naboo')
  naboo.image = 'https://res.cloudinary.com/dbnxoqlud/image/upload/v1583338126/naboo_xltlav.png'
  naboo.save

coruscant = Planet.find_by(name: 'Coruscant')
  coruscant.image = 'https://res.cloudinary.com/dbnxoqlud/image/upload/v1583338117/coruscant_gwo2mo.png'
  coruscant.save

kamino = Planet.find_by(name: 'Kamino')
  kamino.image = 'https://res.cloudinary.com/dbnxoqlud/image/upload/v1587415017/kamino_hx2d27.png'
  kamino.save

  tatooine = Planet.find_by(name: 'Tatooine')
  tatooine.image = 'https://res.cloudinary.com/dbnxoqlud/image/upload/v1583338158/tatooine_qxjaab.png'
  tatooine.save

# geonosis = Planet.find_by(name: 'Geonosis')
#   geonosis.image = 'https://res.cloudinary.com/dbnxoqlud/image/upload/v1583340909/Screen_Shot_2020-03-04_at_11.53.13_AM_b5uast.png'
#   geonosis.save


rianna = User.create(username: 'rianna', password: '123')

# ////////TYPES////////
hut = Type.create(name: 'hut')
palace = Type.create(name: 'palace')
castle = Type.create(name: 'castle')
cave = Type.create(name: 'cave')
cottage = Type.create(name: 'cottage')
treehouse = Type.create(name: 'treehouse')
cabana = Type.create(name: 'cabana')
x_wing = Type.create(name: 'x-wing')
cabin = Type.create(name: 'cabin')
igloo = Type.create(name: 'igloo')
house = Type.create(name: 'house')
cloud = Type.create(name: 'cloud')
apartment = Type.create(name: 'apartment')




# //////LOCATIONS///////

# ///////ALDERAAN//////////
tranquil_hut = Location.create(price: 120, name: 'Tranquil Hut', image: 'https://40.media.tumblr.com/806deacfae6d547518f242cf693badc9/tumblr_n8b3nv6hDn1sn3ne4o1_500.jpg', type_id: hut.id, planet_id: alderaan.id)
house_of_organa = Location.create(price: 240, name: 'House of organa', image: 'https://vignette.wikia.nocookie.net/starwars/images/e/ef/Castle_Organa.png/revision/latest?cb=20150818140835', type_id: palace.id, planet_id: alderaan.id )
forest_cave = Location.create(price: 60, name: 'Alderaan Forest Cave', image: 'https://www.wallpaperup.com/uploads/wallpapers/2015/04/01/652147/97eff9483949b355f6de716841cc14ff-700.jpg', type_id: cave.id, planet_id: alderaan.id )
trehuggers_hut = Location.create(price: 120, name: 'Trehuggers Hut', image: 'https://i.pinimg.com/originals/fb/8a/be/fb8abe3208238b3fdfe8a1beb57e7557.jpg', type_id: hut.id, planet_id: alderaan.id)
creepy_cave = Location.create(price: 60, name: 'Dark, Mysterious Cave', image: 'https://wallpapercave.com/wp/1Xklfvu.jpg', type_id: cave.id, planet_id: alderaan.id)
elf_house = Location.create(price: 120, name: 'Forest Elf House', image: 'https://i.pinimg.com/originals/5f/c7/17/5fc7178051b5aaad548ac98689881e64.jpg', type_id: house.id, planet_id: alderaan.id)

# //////YAVIN IV//////////
poe_treehouse = Location.create(price: 240, name: 'Poe\'s Treehouse', image: 'https://www.tripsavvy.com/thmb/ay-k8x8Hu9biNQw07OQRVIO4KHc=/1600x1067/filters:no_upscale():max_bytes(150000):strip_icc()/treevilla-56a3be985f9b58b7d0d393da.jpg', type_id: treehouse.id, planet_id: yavin_4.id)
jungle_cabana = Location.create(price: 120, name: 'Lil\' Jungle Cabana', image: 'https://media.glampinghub.com/CACHE/images/accommodations/impeccably-luxurious-cabana-suites-in-costa-rican-jungle-1522059415459/6c1a0f2015d0b2de6cfde557f593b64b.jpg', type_id: cabana.id, planet_id: yavin_4.id)
jungle_hut = Location.create(price: 60, name: 'Jungle Hut', image: 'https://pix10.agoda.net/hotelImages/408/408098/408098_14091610280022155622.jpg?s=1024x768', type_id: hut.id, planet_id: yavin_4.id)
tree_house = Location.create(price: 120, name: 'Tree House', image: 'https://41.media.tumblr.com/5e940035d978938d87820a4cf4ccf05f/tumblr_n7r9hukNBD1r09t3ao1_500.jpg', type_id: house.id, planet_id: yavin_4.id)
rickity_hut = Location.create(price: 60, name: 'Ol\' Rickity Hut', image: 'https://i.pinimg.com/originals/f2/3d/a1/f23da1be6aa5ad6f04f5ea96ae9fda6f.jpg', type_id: hut.id, planet_id: yavin_4.id)


# ///////HOTH///////

ice_cave = Location.create(price: 60, name: 'ice Cave', image: 'https://389181.smushcdn.com/1156046/wp-content/uploads/2018/03/IMG_8955-1600x700.jpg?lossy=1&strip=1&webp=1', type_id: cave.id, planet_id: hoth.id)
ice_castle = Location.create(price: 240, name: 'Frozen Castle', image: 'https://nuvomagazine.scdn2.secure.raxcdn.com/wp-content/uploads/2019/01/FB-Photo.jpg', type_id: castle.id, planet_id: hoth.id)
igloo = Location.create(price: 120, name: 'Cute igloo', image: 'https://ecobnb.com/blog/app/uploads/sites/3/2014/01/Igloo-1-res.jpg', type_id: igloo.id, planet_id: hoth.id)
igloo_home = Location.create(price: 120, name: 'Cozy igloo Home', image: 'https://www.hotelyouwant.com/wp-content/uploads/2018/09/arctic_fox_igloos_hotel.jpg', type_id: house.id, planet_id: hoth.id)
doom_ice_cave = Location.create(price: 60, name: 'ice Cave of Doom', image: 'https://vignette.wikia.nocookie.net/legendarymob/images/f/fe/Ice_cave0.jpg/revision/latest?cb=20160924220809', type_id: cave.id, planet_id: hoth.id)

# ///////DAGOBAH////////
eerie_cabin = Location.create(price: 120, name: 'Eerie Cabin', image: 'https://i.pinimg.com/originals/81/c9/c7/81c9c73e5db0158ee2a73748eddbe67d.jpg', type_id: cabin.id , planet_id: dagobah.id)
luke_xwing = Location.create(price: 240, name: 'Lukes Sunken x-Wing', image: 'https://dorksideoftheforce.com/files/2017/09/dagobah-bio-6_62f469f1.jpeg', type_id: x_wing.id, planet_id: dagobah.id)
murky_hut = Location.create(price: 60, name: 'Murky Hut', image: 'https://cdna.artstation.com/p/assets/images/images/019/649/572/large/piotr-stanczyk-f1.jpg?1564438764', type_id: hut.id, planet_id: dagobah.id)
isolated_forest_cabin = Location.create(price: 120, name: 'isolated Forest Cabin', image: 'https://i.pinimg.com/originals/f3/76/f5/f376f5db62c4a7f867503b66e1f7bb57.jpg', type_id: cabin.id, planet_id: dagobah.id)
yodas_hut = Location.create(price: 240, name: 'Yoda\'s Hut', image: 'https://lumiere-a.akamaihd.net/v1/images/yodas-hut_a3d1133d.jpeg?region=0%2C117%2C1560%2C783', type_id: hut.id, planet_id: dagobah.id)

# //////BESPIN///////
cloud_house = Location.create(price: 120, name: 'Lando\'s Cloud Pad', image: 'https://www.lunchboxarchitect.com/images/featured/cloud-house-mcbride-charles-ryan/cloud-house-by-mcbride-charles-ryan-11.jpg?v=1448745593', type_id: house.id, planet_id: bespin.id)
cloud_palace = Location.create(price: 240, name: 'Cloud Palace', image: 'https://vignette.wikia.nocookie.net/battlefront/images/0/0f/Bespin_Administrators_Palace_Battlefront_II.jpg/revision/latest?cb=20180321123756', type_id: palace.id, planet_id: bespin.id)
cloud = Location.create(price: 60, name: 'one Cloud', image: 'https://pvmit.com/wp-content/uploads/2016/05/cloud.jpg', type_id: cloud.id, planet_id: bespin.id)
treehouse_of_dreams = Location.create(price: 120, name: 'Treehouse of Dreams', image: 'https://c4.wallpaperflare.com/wallpaper/222/84/919/fantasy-art-sky-treehouse-trees-wallpaper-preview.jpg', type_id: treehouse.id, planet_id: bespin.id)
floating_home = Location.create(price: 240, name: 'Floating island of Wonders', image: 'https://wallup.net/wp-content/uploads/2016/04/10/133329-fantasy_art-digital_art-house-trees-chains-Zeppelin-rock-clouds-floating_island.jpg', type_id: house.id, planet_id: bespin.id)

# //////ENDOR////////
ewok_hut = Location.create(price: 60, name: 'Ewok Hut', image: 'https://vignette.wikia.nocookie.net/starwars/images/d/dd/ST-ewokvillage.jpg/revision/latest?cb=20070811234556', type_id: hut.id, planet_id: endor.id)
jungle_cave = Location.create(price: 120, name: 'Jungle Cave', image: 'https://oy002fxxvs-flywheel.netdna-ssl.com/wp-content/uploads/2017/12/David-Unger-Exit-from-St-Hermans-Cave_21135144832_o.jpg', type_id: cave.id, planet_id: endor.id)
jungle_loft = Location.create(price: 240, name: 'Premium Ewok Loft', image: 'https://d2z2ez8lwh3r3v.cloudfront.net/bocachicaisland/wp-content/uploads/2017/01/2-bed-1240.jpg', type_id: house.id, planet_id: endor.id)
secret_tree = Location.create(price: 240, name: 'Tree House of Secrets', image: 'https://i.pinimg.com/originals/1b/5e/57/1b5e57a39859363ccddcc603d3bf3fac.jpg', type_id: house.id, planet_id: endor.id)
mushroom_hut = Location.create(price: 120, name: 'Mushroom Hut', image: 'https://40.media.tumblr.com/806deacfae6d547518f242cf693badc9/tumblr_n8b3nv6hDn1sn3ne4o1_500.jpg', type_id: hut.id, planet_id: endor.id)
light_cave = Location.create(price: 60, name: 'Cave of iternal Light', image: 'https://wallpapercave.com/wp/lRVK5Cl.jpg', type_id: cave.id, planet_id: endor.id)

# ///////NABOO////////
pretty_cave = Location.create(price: 60, name: 'Pretty Cave', image: 'https://i.pinimg.com/originals/6b/c5/c9/6bc5c98f29edf6e16ddbff8bc77e5d48.jpg', type_id: cave.id, planet_id: naboo.id)
forest_cottage = Location.create(price: 120, name: 'Forest Cottage', image: 'https://www.dsigners.net/wp-content/uploads/2018/10/jacob-witzling-cabin-designboom-1800.jpg', type_id: cottage.id, planet_id: naboo.id)
theed_palace = Location.create(price: 240, name: 'Theed\'s Royal Palace', image: 'https://starwarsblog.starwars.com/wp-content/uploads/2014/11/Image-1.jpg', type_id: palace.id, planet_id: naboo.id)
twinkling_cottage = Location.create(price: 120, name: 'Twinkling Cottage', image: 'https://i.ytimg.com/vi/Xr2Dx80TU6Q/maxresdefault.jpg', type_id: cottage.id, planet_id: naboo.id)
forest_palace = Location.create(price: 240, name: 'Tree Root Palace', image: 'https://i.pinimg.com/originals/31/4a/c4/314ac44be6f16dfdda172f9df2d3bf7d.jpg', type_id: palace.id, planet_id: naboo.id)

# ////////CORUSCANT////////
imperial_palace = Location.create(price: 240, name: 'imperial Palace', image: 'https://vignette.wikia.nocookie.net/starwars/images/d/d5/Imperial_Palace_Crossing_Paths.jpg/revision/latest?cb=20181015071510', type_id: palace.id, planet_id: coruscant.id)
futuristic_apt = Location.create(price: 120, name: 'Modern City Apartment', image: 'https://blenderartists.org/uploads/default/original/4X/f/5/d/f5d28f40c9ceeb2c7e4ad63753ed1f136edd1f04.jpeg', type_id: apartment.id, planet_id: coruscant.id)
imperial_base = Location.create(price: 60, name: 'intergalactic Pad', image: 'https://www.blendswap.com/blend_previews/21341/0/0', type_id: apartment.id, planet_id: coruscant.id)
imperial_apt = Location.create(price: 120, name: 'imperial Soldier Apartment', image: 'https://img.designswan.com/2014/12/futureApt/1.jpg', type_id: apartment.id, planet_id: coruscant.id)

# ///////TATOOINE////////
rocky_cave = Location.create(price: 60, name: 'Rocky Cave', image: 'https://live.staticflickr.com/8844/28662958252_a88e4da3d1_b.jpg', type_id: cave.id, planet_id: tatooine.id)
obi_hut = Location.create(price: 120, name: 'obi-Wans Hut', image: 'https://vignette.wikia.nocookie.net/starwars/images/5/52/Kenobihut.jpg/revision/latest/top-crop/width/360/height/450?cb=20180206233134', type_id: hut.id, planet_id: tatooine.id)
lukes_house= Location.create(price: 240, name: 'Lukes lil\' hut', image: 'https://assets.atlasobscura.com/media/W1siZiIsInVwbG9hZHMvcGxhY2VfaW1hZ2VzLzE2YmNjMTI5LWY0MmUtNDA4Mi04NGZhLWZhMDE3YWE2ODdkOGJhOTFiZjNlMjI2NGI1YWZiMl9SV0RHV00uanBnIl0sWyJwIiwidGh1bWIiLCJ4MzkwPiJdLFsicCIsImNvbnZlcnQiLCItcXVhbGl0eSA4MSAtYXV0by1vcmllbnQiXV0/RWDGWM.jpg', type_id: house.id, planet_id: tatooine.id)
sandy_hut = Location.create(price: 120, name: 'Sandy Hut', image: 'https://leggypeggy.files.wordpress.com/2015/03/desert-building.jpg', type_id: hut.id, planet_id: tatooine.id)
desert_house = Location.create(price: 240, name: 'Modern Desert House', image: 'https://2.bp.blogspot.com/-91TPwCENDrY/UP3TtPJxR9I/AAAAAAAAPI4/dEHrjzXrHZQ/s1600/Modern_Desert_House_For_Luxury_Life_In_The_Nature_Scottsdale_Arizona_world_of_architecture_01.jpg', type_id: house.id, planet_id: tatooine.id)

# ////////GEONOSIS////////
desert_temple = Location.create(price: 240, name: 'Desert Temple', image: 'https://upload.wikimedia.org/wikipedia/commons/1/15/Philae_Temple_R03.jpg', type_id: palace.id, planet_id: kamino.id)
baby_hut = Location.create(price: 120, name: 'Baby Desert Hut', image: 'https://nomadsdesertretreat.com/wp-content/uploads/2019/06/D105-6758.jpg', type_id: hut.id, planet_id: kamino.id)
desert_cave = Location.create(price: 60, name: 'Desert Cave', image: 'https://live.staticflickr.com/4420/36450569731_a3e0619cb4_b.jpg', type_id: cave.id, planet_id: kamino.id)
peaceful_cave = Location.create(price: 60, name: 'Peaceful Cave', image: 'https://desktopwalls.net/wp-content/uploads/2014/09/Desert%20Cave%20Entrance%20Desktop%20Wallpaper.jpg', type_id: cave.id, planet_id: kamino.id)
geo_temple = Location.create(price: 240, name: 'The Temple of Kamino', image: 'https://www.nationalgeographic.com/content/dam/travel/2016-digital/jordan/world-heritage/petra-world-heritage-jordan.jpg', type_id: palace.id, planet_id: kamino.id)







# byebug

puts 'Data Seeded! 👻'
