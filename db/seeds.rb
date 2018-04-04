# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Work.destroy_all
w1 = Work.create :title => 'The guppy', :description => 'This piece of work is a blah blah blah blah ', :field => '2D digital painting', :hours => 2, :tools => 'Photoshop, Illustrator', :image => 'https://metrouk2.files.wordpress.com/2017/07/187144066.jpg?w=748&h=498&crop=1'
w2 = Work.create :title => 'Puppy Playing', :description => 'This piece of work is a blah blah blah blah ', :field => 'Clay sculpture', :hours => 9, :tools => 'Clay', :image => 'https://secure.i.telegraph.co.uk/multimedia/archive/03597/POTD_chick_3597497k.jpg'
w3 = Work.create :title => 'The scream', :description => 'This is a description of my piece of work', :field => '3D model', :hours => 1, :tools => 'Maya, Houdini, Nuke', :image => 'http://webneel.com/daily/sites/default/files/images/daily/07-2015/18-beautiful-peacock-picture.jpg'
w4 = Work.create :title => 'Yadiyadiya', :description => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', :field => 'sdfjasj', :hours => 10, :tools => 'Pencil and Rubber', :image => 'http://ec.europa.eu/research/headlines/news/images/11_12_17_small.jpg'
w5 = Work.create :title => 'jdisfsa ', :description => 'ldsfosdj jasdiofjadsiofif ji jfjw jafiwj', :field => 'hello I am a field', :hours => 60, :tools => 'Lego Blocks', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwRnT8T_gtjdOhQq0f0VP4W0q0qLXwId-R7AbUDDV4fab0kVKA'
w6 = Work.create :title => 'Picture of a Cat', :description => 'This is a picture of a cat hahahaah', :field => 'Traditional Art', :hours => 3, :tools => '2B Pencils', :image => 'https://pre00.deviantart.net/f8ab/th/pre/i/2016/081/c/7/cat_drawing_by_lethalchris-d9w2z5v.jpg'
w7 = Work.create :title => 'Butterfly', :description => 'This is a painting of an Emperor Butterfly', :field => 'Painting', :hours => 6, :tools => 'Watercolour Pencils, Water', :image => 'https://vignette.wikia.nocookie.net/animalcrossing/images/d/de/Blue_Mopho.jpg/revision/latest?cb=20130726221934'
w8 = Work.create :title => 'Origami Butterfly', :description => 'This is a paper folding of a Butterfly', :field => 'Origami', :hours => 12, :tools => 'Paper, Hands', :image => 'https://i.ytimg.com/vi/dhf_rbGnZbM/hqdefault.jpg'
w9 = Work.create :title => 'Origami Lotus', :description => 'This is a paper folding of a Lotus', :field => 'Origami', :hours => 8, :tools => 'Paper, Hands', :image => 'https://i1.wp.com/www.paperkawaii.com/wp-content/uploads/2017/04/origami-modular-lotus-flower-paper-kawaii-05b.jpg?fit=1920%2C1280&ssl=1'



User.destroy_all
u1 = User.create :name => 'Jess', :surname =>
'Jones', :role => 'Alumini', :field => 'Data Science', :phone => 1234, :email => 'jjones@ga.co', :password => 'chicken', :image => 'https://pbs.twimg.com/profile_images/644233534073348096/Z4cPjp7e_400x400.jpg'
u2 = User.create :name => 'Rob', :surname =>
'Bensen', :role => 'Current Student', :field => 'Data Science', :phone => 5678, :email => 'rbensen@ga.co', :password => 'chicken', :image => 'https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Fpeopledotcom.files.wordpress.com%2F2016%2F08%2Frobby-benson-600.jpg%3Fw%3D600&w=700&q=85'
u3 = User.create :name => 'Andrew', :surname =>
'Matthews', :role => 'Alumini', :field => 'Data Science', :phone => 91011, :email => 'amatthews@ga.co', :password => 'chicken', :image => 'http://richgrad.com/wp-content/uploads/2008/07/andrew-matthews.jpg'


# Users and Works
u1.works << w3 << w4 << w9
u2.works << w1 << w6
u3.works << w2 << w5 << w7 << w8

# Users and favourites


# Works and favourites
