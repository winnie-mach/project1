# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Work.destroy_all
w1 = Work.create :title => 'The guppy', :description => 'This piece of work is a blah blah blah blah ', :field => '2D digital painting', :hours => 2, :tools => 'Photoshop, Illustrator'
w2 = Work.create :title => 'Puppy Playing', :description => 'This piece of work is a blah blah blah blah ', :field => 'Clay sculpture', :hours => 9, :tools => 'Clay'
w3 = Work.create :title => 'The scream', :description => 'This is a description of my piece of work', :field => '3D model', :hours => 1, :tools => 'Maya, Houdini, Nuke'
w4 = Work.create :title => 'Yadiyadiya', :description => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', :field => 'sdfjasj', :hours => 10, :tools => 'Pencil and Rubber'
w5 = Work.create :title => 'jdisfsa ', :description => 'ldsfosdj jasdiofjadsiofif ji jfjw jafiwj', :field => 'hello I am a field', :hours => 60, :tools => 'Lego Blocks'


User.destroy_all
u1 = User.create :name => 'Jess', :surname =>
'Jones', :role => 'Alumini', :field => 'Data Science', :phone => 1234, :email => 'jjones@ga.co'
u2 = User.create :name => 'Rob', :surname =>
'Bensen', :role => 'Current Student', :field => 'Data Science', :phone => 5678, :email => 'rbensen@ga.co'
u3 = User.create :name => 'Andrew', :surname =>
'Matthews', :role => 'Alumini', :field => 'Data Science', :phone => 91011, :email => 'amatthews@ga.co'


Favourite.destroy_all
f1 = Favourite.create :title => "Jess's favourites"
f2 = Favourite.create :title => "Rob Fav List"

# Users and Works
u1.works << w3 << w4
u2.works << w1
u3.works << w2 << w5

#Users and favourites
u1.favourites << f1
u2.favourites << f2

#Favourites and works
f1.works << w2 << w5
w1.favourites << f1 << f2
f2.works << w4 << w3
