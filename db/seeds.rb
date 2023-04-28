# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

first_user = User.create(name: 'Amaka', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
second_user = User.create(name: 'Jaden', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')

first_post = Post.create(author_id: first_user.id, title: 'Hello', text: 'This is my first post')
second_post = Post.create(author_id: second_user.id, title: 'Hi', text: 'This is my second post')

first_comment = Comment.create(author_id: first_user.id, post_id: first_post, text: 'Hi Tom!' )
second_comment = Comment.create(author_id: second_user.id, post_id: second_post, text: 'Hi Jake')

first_like = Like.create(author_id: second_user.id, post_id: first_post)
second_like = Like.create(author_id: first_user.id, post_id: second_post)