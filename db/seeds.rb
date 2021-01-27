User.destroy_all
Tag.destroy_all
Picture.destroy_all
Comment.destroy_all
PictureTag.destroy_all


##### Users

  user1 = User.create(username: "User1", email: "User1@google.com", password: "abc123")
  user2 = User.create(username: "User2", email: "User2@google.com", password: "abc123")
  user3 = User.create(username: "User3", email: "User3@google.com", password: "abc123")
  
###### Tags ######

nature = Tag.create(name:"nature")
city = Tag.create(name:"city")
space = Tag.create(name: "space")


###### Picture ######
pic1 = Picture.create(image_url: "https://images.unsplash.com/photo-1611599539392-0198d33c4c1e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80", title: "natures beauty", user_id: 1)
pic2 = Picture.create(image_url: "https://miro.medium.com/max/10836/1*5lpiSFo6j5dhrr6Z6RFd8Q.jpeg", title: "natures beauty", user_id: 2)
pic3 = Picture.create(image_url: "https://miro.medium.com/max/10836/1*5lpiSFo6j5dhrr6Z6RFd8Q.jpeg", title: "natures beauty", user_id: 3)

###### Comments ######
comment1 = Comment.create(content: "Pretty Picture", user_id: user1, picture_id: pic1)

###### Comments ######

pictag1 = PictureTag.create(picture_id: pic1.id, tag_id: nature.id)




