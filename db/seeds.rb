Location.delete_all
eac = Location.create("name" => "Evanston Athletic Club (EAC)", "address" => "1723 Benson Ave, Evanston, IL 60201, (847) 866-6190", "loc_photo" => "https://chicagoathleticclubs.com/wp-content/gallery/evanston/eac90.jpg", "schedule_link" => "https://chicagoathleticclubs.com/club-schedules/#location=evanston", "website_link" => "https://chicagoathleticclubs.com/locations/evanston/" )
ult = Location.create("name" => "Ult Fitness (Ult)", "address" => "823 Emerson St, Evanston, IL 60201, (847) 866-6190", "loc_photo" => "http://ultfitev.com/images/Ultifit_logo_silver_silver.gif", "schedule_link" => "http://ultfitev.com/new/chicago_boxing_jiu-jitsu_schedule.html", "website_link" => "http://ultfitev.com/")
spac = Location.create("name" => "SPAC", "address" => "2311 Campus Drive Evanston, IL 60208-4230, 847-491-4300", "loc_photo" => "http://www.fitrec.northwestern.edu/media/images/facility/Temp-Entrance", "schedule_link" => "http://www.fitrec.northwestern.edu/classes/group/index.html", "website_link" => "www.fitrec.northwestern.edu/")
fg = Location.create("name" => "Fit Girl", "address" => "1642 Maple Ave., Evanston, IL 60201, (847) 869-4475", "loc_photo" => "http://static.wixstatic.com/media/eb9701_b9dca7cdf83a1443a6b5b1f8cb418fcc.png_srz_p_524_115_75_22_0.50_1.20_0.00_png_srz", "schedule_link" => "http://www.fitgirlstudio.com/#!classes/c13j7", "website_link" => "http://www.fitgirlstudio.com/")
outside = Location.create("name" => "Outside", "address" => "Anywhere Outside", "loc_photo" => "http://dadsroundtable.com/wp-content/uploads/2012/09/the-meadow-by-the-saskatchewan-river-1024x768.jpg", "schedule_link" => "http://www.cityofevanston.org/assets/park2.jpg", "website_link" => "http://www.cityofevanston.org/assets/park2.jpg")


Activity.delete_all
bxg = Activity.create("activity" => "Boxing", "intensity" => "high", "equipment" => "gloves, sneakers", "photo_url" => "http://media.merchantcircle.com/29989482/LAB-Shoot-10-24-81_full.jpeg")
swmg = Activity.create("activity" => "Swimming", "intensity" => "high", "equipment" => "swimming suit, goggles", "photo_url" => "http://www.nbiaa-asinb.org/userfiles/image/Swimming-%20iStockMedium.jpg")
csft = Activity.create("activity" => "Crossfit", "intensity" => "high", "equipment" => "sneakers", "photo_url" => "http://fitnesspainfree.com/wp-content/uploads/2013/12/woman-crossfit-torrance.jpg")
rnng = Activity.create("activity" => "Running", "intensity" => "high", "equipment" => "sneakers", "photo_url" => "http://blog.zensorium.com/wp-content/uploads/2014/04/running-21.jpg")
spng = Activity.create("activity" => "Spinning", "intensity" => "medium", "equipment" => "sneakers or cycling shoes", "photo_url" => "http://abysportnebolel.sk/wp-content/uploads/2012/12/spinning-2.jpg")
yga = Activity.create("activity" => "Yoga", "intensity" => "low", "equipment" => "yoga mat", "photo_url" => "http://www.pretzels-yoga.com/wp-content/uploads/2014/05/yoga101.jpg")
cyng = Activity.create("activity" => "Cycling", "intensity" => "medium", "equipment" => "bike, sneakers or cycling shoes, helmet", "photo_url" => "http://www.cycleclub.com/wp-content/uploads/2012/06/Cycling.jpg")
wght = Activity.create("activity" => "Weight Training", "intensity" => "medium", "equipment" => "weights, sneakers", "photo_url" => "http://oaclubs.files.wordpress.com/2011/07/weight-lifting-group-class.jpg")

Type.delete_all
strength = Type.create("name" => "strength")
cardio = Type.create("name" => "cardio")
flexibility = Type.create("name" => "flexibility")

Combo.delete_all
Combo.create("activity_id" => swmg.id, "location_id" => spac.id, "type_id" => cardio.id)
Combo.create("activity_id" => swmg.id, "location_id" => eac.id, "type_id" => cardio.id)
Combo.create("activity_id" => swmg.id, "location_id" => outside.id, "type_id" => cardio.id)
Combo.create("activity_id" => rnng.id, "location_id" => eac.id, "type_id" => cardio.id)
Combo.create("activity_id" => rnng.id, "location_id" => spac.id, "type_id" => cardio.id)
Combo.create("activity_id" => rnng.id, "location_id" => ult.id, "type_id" => cardio.id)
Combo.create("activity_id" => rnng.id, "location_id" => outside.id, "type_id" => cardio.id)
Combo.create("activity_id" => spng.id, "location_id" => eac.id, "type_id" => cardio.id)
Combo.create("activity_id" => spng.id, "location_id" => spac.id, "type_id" => cardio.id)
Combo.create("activity_id" => spng.id, "location_id" => ult.id, "type_id" => cardio.id)
Combo.create("activity_id" => spng.id, "location_id" => fg.id, "type_id" => cardio.id)
Combo.create("activity_id" => bxg.id, "location_id" => ult.id, "type_id" => cardio.id)
Combo.create("activity_id" => bxg.id, "location_id" => eac.id, "type_id" => cardio.id)
Combo.create("activity_id" => csft.id, "location_id" => ult.id, "type_id" => strength.id)
Combo.create("activity_id" => yga.id, "location_id" => ult.id, "type_id" => flexibility.id)
Combo.create("activity_id" => yga.id, "location_id" => eac.id, "type_id" => flexibility.id)
Combo.create("activity_id" => yga.id, "location_id" => spac.id, "type_id" => flexibility.id)
Combo.create("activity_id" => yga.id, "location_id" => fg.id, "type_id" => flexibility.id)
Combo.create("activity_id" => yga.id, "location_id" => outside.id, "type_id" => flexibility.id)
Combo.create("activity_id" => wght.id, "location_id" => spac.id, "type_id" => strength.id)
Combo.create("activity_id" => wght.id, "location_id" => ult.id, "type_id" => strength.id)
Combo.create("activity_id" => wght.id, "location_id" => eac.id, "type_id" => strength.id)
Combo.create("activity_id" => cyng.id, "location_id" => outside.id, "type_id" => cardio.id)

User.delete_all
sheila = User.create("username" => "ssh1030", "password" => "running", "name" => "Sheila Shah", "photo_url" => "https://scontent-b-ord.xx.fbcdn.net/hphotos-xap1/t1.0-9/1012142_10101212221854482_1836347964623012681_n.jpg")
jordan = User.create("username" => "jcstewart09", "password" => "swimming", "name" => "Jordan Stewart", "photo_url" => "https://fbcdn-sphotos-d-a.akamaihd.net/hphotos-ak-xaf1/t1.0-9/2668_547438721384_4891016_n.jpg")







# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


