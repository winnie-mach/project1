# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Work.destroy_all
w1 = Work.create :title => 'Highway 1', :description => "This is highway 1, the scenic, winding, endlessly long jewel of california that reveals exactly how wild the state is outside of Los Angeles and San Francisco.  Big Sur as a region has between 1000 and 2000 residents in the roughly same size of land as the state of Rhode Island. The coastal mountains are very rugged, and difficult to navigate around, so when the idea of what later became highway 1 first began to take shape in the 1910’s, it was a design challenge.  As the region has proved repeatedly, despite everyones best efforts, this land will always be wild.", :field => '2D digital painting', :hours => 10, :tools => 'Photoshop, Illustrator, Custom Brushes', :image => 'https://img00.deviantart.net/b042/i/2018/094/1/1/ocean_fence_by_chateaugrief-dc7w7kn.jpg'
w2 = Work.create :title => 'Kristoffer Andersson', :description => 'This figure sculpting course is a life-modeling class designed for both beginning and advanced students interested in the human figure as a subject of art.Sculpting directly in clay and working from a model, students study the body’s three-dimensional form with emphasis placed on the fundamental sculptural principles of proportion, volume and movement.', :field => 'Clay sculpture', :hours => 60, :tools => 'Clay', :image => 'https://static1.squarespace.com/static/59eb87cfe5dd5bbba05cacd3/59f5be4771c10b247de4010e/59f5be5de4966b0784cced20/1511037382969/Kristoffer-Andersson-3D-vfx-Clay-Sculpture-Front.jpg'
w3 = Work.create :title => 'Stitch', :description => 'This is a description of my piece of work', :field => '3D model', :hours => 14, :tools => 'Maya, 3D Coat, Mari, Nuke, Renderman', :image => 'http://i.vimeocdn.com/video/356917988_1280x720.jpg'
w4 = Work.create :title => 'Friends and Family', :description => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', :field => 'Video Editing', :hours => 10, :tools => 'Sony Vegas, Final Cut Pro', :image => 'http://www.techblaster.net/wp-content/uploads/2013/12/Magix-Movie-Edit.jpg'
w5 = Work.create :title => 'Your Limit is Your Soul', :description => 'Think of your current wallet and how that works. You have access to your physical coins and notes, known in financial terms as fiat currency, and you can put them all into your wallet where you can keep track of how much you have and store it for as long as you like.', :field => 'Typography', :hours => 60, :tools => 'Illustrator, InDesign', :image => 'https://i.pinimg.com/originals/77/b8/7e/77b87e57b2d92a32a4c05e5b7bd97320.jpg'
w6 = Work.create :title => 'Picture of a Cat', :description => 'When it comes to your private key, that serves as the unique digital code that only you have access to in order to unlock what would essentially be a big padlock on the front of your physical wallet -- except all of this happens within the mechanism behind whichever mobile wallet app or service you choose to use and you never actually see the process at work.', :field => 'Traditional Art', :hours => 3, :tools => '2B Pencils', :image => 'https://pre00.deviantart.net/f8ab/th/pre/i/2016/081/c/7/cat_drawing_by_lethalchris-d9w2z5v.jpg'
w7 = Work.create :title => 'Yellow Butterfly', :description => 'This is a photo of an Emperor Butterfly. The Canon PowerShot SX620 HS is an affordable travel-zoom camera with a 25x zoom lens. The Canon SX620 offers 20 megapixels, a high-resolution 3-inch LCD screen, built-in wi-fi and NFC connectivity, and 1080p HD movies.', :field => 'Photography', :hours => 6, :tools => 'Canon EOS 500D, Photoshop, Lightroom', :image => 'https://vistanews.ru/uploads/posts/2017-10/1508834503_papilio-1.jpg'
w8 = Work.create :title => 'Home', :description => 'Artists’ oil colours are made by mixing dry powder pigments with selected refined linseed oil to a stiff paste consistency and grinding it by strong friction in steel roller mills. The consistency of the colour is important. The standard is a smooth, buttery paste, not stringy or long or tacky. When a more flowing or mobile quality is required by the artist, a liquid painting medium such as pure gum turpentine must be mixed with it. In order to accelerate drying, a siccative, or liquid drier, is sometimes used.', :field => 'Oil Painting', :hours => 12, :tools => 'Oil Paint, Hands', :image => 'https://www.artistsnetwork.com/wp-content/uploads/importedmedia/VloothuisOilBlogThickPaint-1024x771.png'
w9 = Work.create :title => 'Origami Lotus', :description => 'This is a paper folding of a Lotus', :field => 'Origami', :hours => 8, :tools => 'Paper, Hands', :image => 'https://i1.wp.com/www.paperkawaii.com/wp-content/uploads/2017/04/origami-modular-lotus-flower-paper-kawaii-05b.jpg?fit=1920%2C1280&ssl=1'



User.destroy_all
u1 = User.create :name => 'Jess', :surname =>
'Jones', :role => 'Alumini', :field => 'Digital Artist', :phone => 0434666770, :email => 'jjones@ga.co', :password => 'chicken', :image => 'http://mdhs.unimelb.edu.au/__data/assets/image/0010/2188189/Student-centre.jpg'
u2 = User.create :name => 'Joe', :surname =>
'Bensen', :role => 'Current Student', :field => 'Data Science', :phone => 0403323435, :email => 'jbensen@ga.co', :password => 'chicken', :image => 'https://www.rochesteradvanceddentistry.com/x/lc-content/uploads/2017/05/Fotolia_87438834_Subscription_Monthly_M.jpg'
u3 = User.create :name => 'Andrew', :surname =>
'Matthews', :role => 'Alumini', :field => 'Photography', :phone => 0444030215, :email => 'amatthews@ga.co', :password => 'chicken', :image => 'https://i.imgur.com/JEWpRQU.jpg'


# Users and Works
u1.works << w3 << w4 << w9
u2.works << w1 << w6
u3.works << w2 << w5 << w7 << w8

# Users and favourites


# Works and favourites
