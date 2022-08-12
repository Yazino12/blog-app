# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create at least one user by running the following code:
first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
second_user = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')

# Create at least 4 posts written by one of the users you created by running the following code:
first_post = Post.create(author: first_user, title: 'Hello', text: 'This is my first post')
second_post = Post.create(author: first_user, title: 'there', text: 'This is my second post')
third_post = Post.create(author: second_user, title: 'Hello', text: 'This is my first post')
fourth_post = Post.create(author: second_user, title: 'there', text: 'This is my second post')

# Create at least 6 posts comments for one of the posts you created by running the following code:
Comment.create(post: first_post, author: first_user, text: 'Hi Tom first!' )
Comment.create(post: first_post, author: first_user, text: 'Hi Tom second!' )
Comment.create(post: first_post, author: first_user, text: 'Hi Tom third!' )
Comment.create(post: first_post, author: second_user, text: 'Hi Lilly first!' )
Comment.create(post: first_post, author: second_user, text: 'Hi Lilly second!' )
Comment.create(post: first_post, author: second_user, text: 'Hi Lilly third!' )
