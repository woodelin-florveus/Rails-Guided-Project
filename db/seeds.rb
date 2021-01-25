User.destroy_all
Tag.destroy_all
Picture.destroy_all
Comment.destroy_all


##### Users

  user1 = User.create(username: "User1", email: "User1@google.com", password: "abc123")
  user2 = User.create(username: "User2", email: "User2@google.com", password: "abc123")
  user3 = User.create(username: "User3", email: "User3@google.com", password: "abc123")
  
###### Tags ######

nature = Tag.create(name:"nature")
city = Tag.create(name:"city")
space = Tag.create(name: "space")


###### Picture ######
pic1 = Picture.create(image_url: "https://miro.medium.com/max/10836/1*5lpiSFo6j5dhrr6Z6RFd8Q.jpeg", title: "natures beauty", user_id: user1)

###### Comments ######
comment1 = Comment.create(content: "Pretty Picture", user_id: user1, picture_id: pic1)




