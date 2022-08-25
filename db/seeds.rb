# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create at least one user by running the following code:
first_user = User.create!(name: 'Tom', photo: 'https://images.unsplash.com/flagged/photo-1559475555-b26777ed3ab4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fHRlYWNoZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60', bio: 'Teacher from Mexico.', post_counter: 0, email: 'yasin.el@gmail.com', password: '112233')

second_user = User.create!(name: 'Lilly', photo: 'https://images.unsplash.com/photo-1544717305-2782549b5136?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dGVhY2hlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60', bio: 'Teacher from Poland.', post_counter: 0, email: 'y.el@gmail.com', password: '112233')

third_user = User.create!(name: 'Frank', photo: 'https://images.unsplash.com/photo-1548449112-96a38a643324?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8dGVhY2hlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60', bio: 'Teacher from Canada.', post_counter: 0, email: 'ya.el@gmail.com', password: '112233')

fourth_user = User.create!(name: 'Nella', photo: 'https://images.unsplash.com/photo-1567532939604-b6b5b0db2604?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzd8fHRlYWNoZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60', bio: 'Teacher from Mexico.', post_counter: 0, email: 'yas.el@gmail.com', password: '112233')

fivth_user = User.create!(name: 'Steve', photo: 'https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fHRlYWNoZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60', bio: 'Teacher from USA.', post_counter: 0, email: 'yasi.el@gmail.com', password: '112233')


# Create at least 4 posts written by one of the users you created by running the following code:
first_post = Post.create!(author: first_user, title: 'First', text: 'This is my first post', comment_counter: 0, like_counter: 0)

second_post = Post.create!(author: first_user, title: 'Second', text: 'This is my second post', comment_counter: 0, like_counter: 0)

third_post = Post.create!(author: first_user, title: 'Third', text: 'This is my third post', comment_counter: 0, like_counter: 0)

fourth_post = Post.create!(author: first_user, title: 'Fourth', text: 'This is my fourth post', comment_counter: 0, like_counter: 0)


# Create at least 6 posts comments for one of the posts you created by running the following code:
first_comment = Comment.create!(post_id: first_post.id, author_id: first_user.id, text: 'Hi Tom first!' )

second_comment = Comment.create!(post_id: first_post.id, author_id: first_user.id, text: 'Hi Tom second!' )

third_comment = Comment.create!(post_id: first_post.id, author_id: first_user.id, text: 'Hi Tom third!' )

fourth_comment = Comment.create!(post_id: first_post.id, author_id: first_user.id, text: 'Hi Tom fourth!' )

fivth_comment = Comment.create!(post_id: first_post.id, author_id: first_user.id, text: 'Hi Tom fivth!' )

sixth_comment = Comment.create!(post_id: first_post.id, author_id: first_user.id, text: 'Hi Tom sixth!' )

