# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all
user1=User.create(username: "tim")
user2=User.create(username: 'mike')
art1= Artwork.create( title: "strin", image_url: "asjdas", artist_id: user1.id)
art2= Artwork.create(title: "sdfsdf", image_url: "yiytiu", artist_id: user2.id)
ArtworkShare.create( [
  {viewer_id: user1.id, artwork_id: art1.id},
  {viewer_id: user1.id, artwork_id: art2.id},
  {viewer_id: user2.id, artwork_id: art2.id}
  ] )


Comment.create(author_id: user1.id, artwork_id: art1.id, body: "wlerhwe;lkrh")
Comment.create(author_id: user1.id, artwork_id: art2.id, body: "wlerhwe;lkrh")
Comment.create(author_id: user1.id, artwork_id: art1.id, body: "wlerhwe;lkrh")

Comment.create(author_id: user2.id, artwork_id: art1.id, body: "wlerhwe;lkrh")
Comment.create(author_id: user2.id, artwork_id: art2.id, body: "wlerhwe;lkrh")
