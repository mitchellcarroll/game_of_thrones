# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Character.destroy_all
House.destroy_all

nightsWatch = House.create(name:"Nights Watch")
stark = House.create(name:"House Stark")
targaryen = House.create(name:"House Targaryen")
lannister = House.create(name:"House Lannister")
baratheon = House.create(name:"House Baratheon")

ladyCatelynStark = Character.create(name:"Lady Catelyn Stark", house: stark)
eddardStark = Character.create(name:"Eddard Stark", house: stark)
robbStark = Character.create(name:"Robb Stark", house: stark)
sansaStark = Character.create(name:"Sansa Stark", house: stark)
aryaStark = Character.create(name:"Arya Stark", house: stark)
brandonStark = Character.create(name:"Brandon Stark", house: stark)
rickonStark = Character.create(name:"Rickon Stark", house: stark)
tywinLannister = Character.create(name:"Tywin Lannister", house: lannister)
tyrionLannister = Character.create(name:"Tyrion Lannister", house: lannister)
serJaimeLannister = Character.create(name:"Ser Jamie Lannister", house: lannister)
queenCerseiBaratheon = Character.create(name:"Queen Cersei Baratheon", house: lannister)
kingRobertBaratheon = Character.create(name:"King Robert Baratheon", house: baratheon)
rendlyBaratheon = Character.create(name:"Rendly Baratheon", house: baratheon)
stannisBaratheon = Character.create(name:"Stannis Baratheon", house: baratheon)
princeJoffreyBaratheon = Character.create(name:"Prince Joffrey Baratheon", house: baratheon)
princessMycellaBaratheon = Character.create(name:"Princess Myrcella Baratheon", house: baratheon)
princeTommenBaratheon = Character.create(name:"Prince Tommen Baratheon", house: baratheon)
gendry = Character.create(name:"Gendry", house: baratheon)
daenerysTargaryen = Character.create(name:"Daenerys Targaryen", house: targaryen)
viserysTargaryen = Character.create(name:"Viserys Targaryen", house: targaryen)
benjenStark = Character.create(name:"Benjen Stark", house: stark)
jonSnow = Character.create(name:"Jon Snow", house: stark)
maesterAemon = Character.create(name:"Maester Aemon", house: targaryen)
