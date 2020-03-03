puts "Clearing database"
Comment.destroy_all
SubDiscussion.destroy_all
Discussion.destroy_all
Article.destroy_all
User.destroy_all

puts "Creating database"
User.create!(name: "Marcus", nickname: "kinho107", email: "marcus@test.com", password: "123456")
User.create!(name: "Victor", nickname: "viking", email: "vic@test.com", password: "123456")
Article.create!(user: User.first, title: "my first article")
Article.create!(user: User.first, title: "my second article")
Discussion.create!(user: User.first, article: Article.first, title: "Discussion for first article")
Discussion.create!(user: User.last, article: Article.first, title: "Discussion for first article from second user")
SubDiscussion.create!(title: "Level 1 walkthrough", discussion: Discussion.first)
SubDiscussion.create!(title: "Level 2 walkthrough", discussion: Discussion.first)
Comment.create!(content: "first user, first subdiscussion", user: User.first, sub_discussion: SubDiscussion.first)
Comment.create!(content: "second user, first subdiscussion", user: User.last, sub_discussion: SubDiscussion.first)
