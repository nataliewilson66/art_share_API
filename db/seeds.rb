# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user10 = User.create({ username: 'adunne' })
user11 = User.create({ username: 'kpiscetta' })

art4 = Artwork.create({ title: 'art4', image_url: 'image.org', artist_id: 11 })
art5 = Artwork.create({ title: 'art5', image_url: 'jesus.com', artist_id: 11 })

share3 = ArtworkShare.create({ artwork_id: 3, viewer_id: 8 })
share4 = ArtworkShare.create({ artwork_id: 4, viewer_id: 8 })
share5 = ArtworkShare.create({ artwork_id: 1, viewer_id: 10 })
share6 = ArtworkShare.create({ artwork_id: 1, viewer_id: 11 })