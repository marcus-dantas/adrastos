puts "Clearing database"
User.destroy_all
Article.destroy_all
Discussion.destroy_all
Comment.destroy_all
puts "Creating database"
User.create!(name: "Marcus", nickname: "kinho107", email: "marcus@test.com", password: "123456")
User.create!(name: "Victor", nickname: "viking", email: "vic@test.com", password: "123456")
Article.create!(user: User.first, title: "my first article")
Article.create!(user: User.first, title: "my second article")
Discussion.create!(user: User.first, article: Article.first, title: "Discussion for first article")
Discussion.create!(user: User.last, article: Article.first, title: "Discussion for first article from second user")
Comment.create!(content: "first user, first discussion", user: User.first, discussion: Discussion.first)
Comment.create!(content: "second user, first discussion", user: User.last, discussion: Discussion.first)
