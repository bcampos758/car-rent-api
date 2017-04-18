# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# clear all vehicle and unit instances before seeding db

Vehicle.destroy_all
Faker::Vehicle.unique.clear

## Economy vehicles

yaris = Vehicle.create(manufacturer: "Toyota", model: "Yaris", img: "https://images-na.ssl-images-amazon.com/images/G/01/Automotive/Entity/Chrome/v2/14379._CB167378628_.jpg", year: "2013", vehicleType: "Economy", capacity: 4, quantity: 5, rate: 14.31, transmission: "automatic")

rio = Vehicle.create(manufacturer: "Kia", model: "Rio", img: "http://st.motortrend.com/uploads/sites/10/2015/11/2014-kia-rio-sx-at-hatchback-angular-front.png", year: "2014", vehicleType: "Economy", capacity: 4, quantity: 5, rate: 15.41, transmission: "automatic")

fiesta = Vehicle.create(manufacturer: "Ford", model: "Fiesta", img: "http://assets-clean.local-car-finder.com/images/11804/11804_st1280_089.png", year: "2017", vehicleType: "Economy", capacity: 5, quantity: 5, rate: 16.30, transmission: "automatic")

spark = Vehicle.create(manufacturer: "Chevrolet", model: "Spark", img: "https://cars.usnews.com/static/images/Auto/izmo/i960918/2016_chevrolet_spark_angularfront.jpg", year: "2016", vehicleType: "Economy", capacity: 4, quantity: 5, rate: 22.27, transmission: "automatic")

sonic = Vehicle.create(manufacturer: "Chevrolet", model: "Sonic", img: "http://st.motortrend.com/uploads/sites/10/2016/07/2016-chevrolet-sonic-lt-at-hatchback-angular-front.png", year: "2016", vehicleType: "Economy", capacity: 5, quantity: 5, rate: 33.99, transmission: "automatic")

# Compact vehicles

versa = Vehicle.create(manufacturer: "Nissan", model: "Versa", img: "http://st.motortrend.com/uploads/sites/10/2015/11/2015-nissan-versa-1.6-sv-auto-sedan-angular-front.png", year: "2015", vehicleType: "Compact", capacity: 5, quantity: 5, rate: 15.23, transmission: "automatic")

focus = Vehicle.create(manufacturer: "Ford", model: "Focus", img: "http://bestcarmag.com/sites/default/files/2015-ford-focus-1303839-445859.png", year: "2015", vehicleType: "Compact", capacity: 5, quantity: 5, rate: 16.30, transmission: "automatic")

# Midsize vehicles

corolla = Vehicle.create(manufacturer: "Toyota", model: "Corolla", img: "https://file.kbb.com/kbb/vehicleimage/evoxseo/cp/l/10677/2016-toyota-corolla-front_10677_032_640x480_040.png", year: "2016", vehicleType: "Midsize", capacity: 5, quantity: 5, rate: 16.38, transmission: "automatic")

avenger = Vehicle.create(manufacturer: "Dodge", model: "Avenger", img: "http://st.motortrend.com/uploads/sites/10/2015/11/2014-dodge-avenger-sxt-sedan-angular-front.png", year: "2014", vehicleType: "Midsize", capacity: 5, quantity: 5, rate: 17.41, transmission: "automatic")

elantra = Vehicle.create(manufacturer: "Hyundai", model: "Elantra", img: "https://www.cstatic-images.com/car-pictures/xl/CAC40HYC022A021001.png", year: "2014", vehicleType: "Midsize", capacity: 5, quantity: 5, rate: 26.74, transmission: "automatic")

accent = Vehicle.create(manufacturer: "Hyundai", model: "Accent", img: "http://st.motortrend.com/uploads/sites/10/2016/05/2016-hyundai-accent-se-sedan-angular-front.png", year: "2015", vehicleType: "Midsize", capacity: 5, quantity: 5, rate: 35.32, transmission: "automatic")

cruze = Vehicle.create(manufacturer: "Chevrolet", model: "Cruze", img: "http://www.megaisencoes.com.br/site/wp-content/uploads/2014/08/cruze_lt.png", year: "2015", vehicleType: "Midsize", capacity: 5, quantity: 5, rate: 36.56, transmission: "automatic")

# Standard vehicles

jetta = Vehicle.create(manufacturer: "Volkswagen", model: "Jetta", img: "http://st.motortrend.com/uploads/sites/10/2016/09/2017-volkswagen-jetta-s-auto-sedan-angular-front.png", year: "2015", vehicleType: "Standard", capacity: 5, quantity: 5, rate: 16.10, transmission: "automatic")

sonata = Vehicle.create(manufacturer: "Hyundai", model: "Sonata", img: "https://www.cstatic-images.com/car-pictures/xl/USC60HYC031D021001.png", year: "2015", vehicleType: "Standard", capacity: 5, quantity: 5, rate: 17.42, transmission: "automatic")

galant = Vehicle.create(manufacturer: "Mitsubishi", model: "Galant", img: "http://st.motortrend.com/uploads/sites/10/2015/11/2008-mitsubishi-galant-es-sedan-angular-front.png", year: "2012", vehicleType: "Standard", capacity: 5, quantity: 5, rate: 18.41, transmission: "automatic")

verano = Vehicle.create(manufacturer: "Buick", model: "Verano", img: "http://assets.local-car-finder.com/images//10635/10635_st1280_089.png", year: "2016", vehicleType: "Standard", capacity: 5, quantity: 5, rate: 39.19, transmission: "automatic")

altima = Vehicle.create(manufacturer: "Nissan", model: "Altima", img: "http://assets.local-car-finder.com/images//10931/10931_st1280_089.png", year: "2016", vehicleType: "Standard", capacity: 5, quantity: 5, rate: 38.99, transmission: "automatic")

# SUV

cherokee = Vehicle.create(manufacturer: "Jeep", model: "Cherokee", img: "https://s-media-cache-ak0.pinimg.com/originals/99/9c/50/999c506301eec358f7e726ead995e2ab.png", year: "2016", vehicleType: "SUV", capacity: 5, quantity: 5, rate: 24.00, transmission: "automatic")

sportage = Vehicle.create(manufacturer: "Kia", model: "Sportage", img: "http://st.motortrend.com/uploads/sites/10/2016/08/2017-kia-sportage-ex-at-awd-suv-angular-front.png?interpolation=lanczos-none&fit=around%7C660%3A439", year: "2016", vehicleType: "SUV", capacity: 5, quantity: 5, rate: 24.00, transmission: "automatic")

escape = Vehicle.create(manufacturer: "Ford", model: "Escape", img: "https://di-uploads-pod4.dealerinspire.com/portorchardford/uploads/2016/05/edge-white-background-copy.png", year: "2015", vehicleType: "SUV", capacity: 5, quantity: 5, rate: 33.45, transmission: "automatic")

explorer = Vehicle.create(manufacturer: "Ford", model: "Explorer", img: "https://di-uploads-pod3.s3.amazonaws.com/jimshorkeyautogroup/uploads/2016/01/Ford-Explorer.png", year: "2015", vehicleType: "SUV", capacity: 7, quantity: 5, rate: 38.60, transmission: "automatic")

armada = Vehicle.create(manufacturer: "Nissan", model: "Armada", img: "http://www.uwmedia.us/mvp/LineUp/assets/nissan/2015_nissan_armada.png", year: "2014", vehicleType: "SUV", capacity: 7, quantity: 5, rate: 36.60, transmission: "automatic")

santaFe = Vehicle.create(manufacturer: "Hyundai", model: "Santa Fe", img: "https://www.hyundaiusa.com/images/2017/santa-fe-sport/BYO/bnp/updated/santa-fe-sport-20t-ultimate-433x210.png", year: "2016", vehicleType: "SUV", capacity: 5, quantity: 5, rate: 36.60, transmission: "automatic")

traverse = Vehicle.create(manufacturer: "Chevrolet", model: "Traverse", img: "http://uwmedia.us/mvp/asset-library/assets/chevrolet/2017_chevrolet_traverse_premier_awd.png", year: "2015", vehicleType: "SUV", capacity: 7, quantity: 5, rate: 36.24, transmission: "automatic")

# minivan

grand = Vehicle.create(manufacturer: "Dodge", model: "Grand", img: "https://di-uploads-pod3.dealerinspire.com/quirkchryslerdodgejeepram/uploads/DodgeGrandCaravanpng11.png", year: "2015", vehicleType: "Mini Van", capacity: 7, quantity: 5, rate: 31.35, transmission: "automatic")

sedona = Vehicle.create(manufacturer: "Kia", model: "Sedona", img: "http://rimbuz.com/wp-content/uploads/2015-Kia-Sedona-Wallpapers-for-Laptops.png", year: "2016", vehicleType: "Mini Van", capacity: 7, quantity: 5, rate: 28.99, transmission: "automatic")

quest = Vehicle.create(manufacturer: "Nissan", model: "Quest", img: "http://st.automobilemag.com/uploads/sites/10/2015/11/2015-nissan-quest-sv-minivan-angular-front.png", year: "2014", vehicleType: "Mini Van", capacity: 7, quantity: 5, rate: 41.76, transmission: "automatic")

vehicles  = [yaris, rio, fiesta, spark, sonic, versa, focus, corolla, avenger, elantra, accent, cruze, jetta, sonata, galant, verano, altima, cherokee, sportage, escape, explorer, armada, santaFe, traverse, grand, sedona, quest]

locations = ["Weston", "Boca Raton", "Miami", "Fort Lauderdale", "Coral Springs", "Sunrise"]

for v in vehicles
  15.times do
    v.units.create(mileage: Faker::Number.between(1000, 70000), isAvailable: Faker::Boolean.boolean, vin: Faker::Vehicle.unique.vin, location: locations[Faker::Number.between(0, 5)])
  end
end
