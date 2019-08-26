# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@user1 = User.create(username: "User1", email: "user1@example.com")
@user2 = User.create(username: "User2", email: "user2@example.com")

@category1 = Category.create(name: "Feelings")
@category2 = Category.create(name: "Thoughts")
@category3 = Category.create(name: "Theories")

@post1 = Post.create(title: "Feeling Groovy", content: "I'm feeling so groovy")
@post2 = Post.create(title: "Feeling Extra Groovy", content: "I'm feeling extra groovy")
@post3 = Post.create(title: "Feeling Groggy", content: "I'm feeling so groggy")

@post1.categories << @category1
@post1.categories << @category3
@post2.categories << @category1

@user1.posts << @post1 
@user1.posts << @post3 
@user2.posts << @post2

@comment1 = Comment.create(content: "So Groovy, man!")
@comment1.user = @user2
@post1.comments << @comment1

