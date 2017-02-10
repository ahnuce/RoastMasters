# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@Roastimages = RoastImage.create([
  { name: "animal",
    img_url: "https://ilovefunnyanimalpics.files.wordpress.com/2010/01/funny-animals-fat-cow.jpg"
  },

  { name: "people",
    img_url: "http://www.drodd.com/images8/funny-face15.jpeg"
  }

  ])
