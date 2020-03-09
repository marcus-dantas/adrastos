require 'faker'

puts "Clearing database"
Comment.destroy_all
SubDiscussion.destroy_all
Discussion.destroy_all
Article.destroy_all
User.destroy_all

puts "Creating database"
User.create!(name: "Marcus", nickname: "kinho107", email: "marcus@test.com", password: "123456")
User.create!(name: "Victor", nickname: "viking", email: "vic@test.com", password: "123456")

Article.create!(user: User.first, title: "GTA 5", body: "Michael Townley, Trevor Philips, and Brad Snider partake in a botched robbery in Ludendorff, North Yankton. Nine years later, Michael is living under witness protection with his family in Los Santos, under the alias Michael De Santa. Across town, gangbanger Franklin Clinton is working for a corrupt Armenian car salesman and meets Michael while attempting to fraudulently repossess his son's car; the two later become friends. When Michael finds his wife Amanda sleeping with her tennis coach, he and Franklin chase the coach to a mansion, which Michael destroys in anger. The owner turns out to be the girlfriend of Martin Madrazo, a Mexican drug lord who demands compensation to avoid further violence. Michael returns to a life of crime to obtain the money, enlisting Franklin as an accomplice. With the help of Michael's old friend Lester Crest, a disabled hacker, they perform a jewellery shop heist to pay off the debt. Trevor, who now lives in a trailer park on the outskirts of Los Santos, hears of the heist and realises that it was Michael's handiwork; Trevor had believed that Michael was killed in their botched robbery nine years ago. Trevor surprises Michael and reunites with him, after tracking down his home.", photo_url: "https://i.pinimg.com/originals/ae/0a/08/ae0a08e1a73916f5afa8868c43f34b77.jpg")
Article.create!(user: User.first, title: "Uncharted collection", body: "UNCHARTED: The Nathan Drake Collection includes the singleplayer campaigns for UNCHARTED: Drake's Fortune, UNCHARTED 2: Among Thieves, and UNCHARTED 3: Drake's Deception. Unparalleled Story  Play as Nathan Drake across a trilogy of thrilling, white-knuckle adventures.", photo_url: "https://hips.hearstapps.com/digitalspyuk.cdnds.net/13/43/77601.jpg?resize=480:*")
Article.create!(user: User.first, title: "Tomb raider", body: "Lara Croft, a courageous and independent young woman, sets out on a dangerous journey to unravel the truth behind her adventurer father's mysterious disappearance.", photo_url: "https://store-images.s-microsoft.com/image/apps.6674.66252867926858756.3a7bf113-281b-4dec-9089-240261b0e96c.4ffb9287-3f5a-4d4a-8a1e-e4ea150abc78")
Article.create!(user: User.first, title: "Diablo 3", body: "Diablo III is a hack-and-slash action role-playing game developed and published by Blizzard Entertainment as the third installment in the Diablo franchise", photo_url: "https://d3tg06jbotvai2.cloudfront.net/game_tetiere/img/diablo-3-reaper-of-souls-img-4.jpg")
Article.create!(user: User.first, title: "Red dead redemption 2", body: "Red Dead Redemption 2 is a 2018 action-adventure game developed and published by Rockstar Games. The game is the third entry in the Red Dead series and is a prequel to the 2010 game Red Dead Redemption.", photo_url: "https://images-na.ssl-images-amazon.com/images/I/91l%2BXW9jctL._AC_SL1500_.jpg")
Article.create!(user: User.last, title: "Final Fantasy 7 remake", body: "Final Fantasy VII Remake is an upcoming action role-playing game developed and published by Square Enix. The game is a remake of the 1997 PlayStation game Final Fantasy VII.", photo_url: "https://cdn.mos.cms.futurecdn.net/gPm2WzMKQbJzRWxLwukKCF.jpg")
Article.create!(user: User.last, title: "Arkham asylum", body: "Batman: Arkham Asylum is a 2009 action-adventure game developed by Rocksteady Studios and published by Eidos Interactive in conjunction with Warner Bros. Interactive Entertainment.", photo_url: "https://images7.alphacoders.com/319/thumb-1920-319689.jpg")
Article.create!(user: User.last, title: "Destiny 2", body: "Destiny 2 is a free-to-play online-only multiplayer first-person shooter video game developed by Bungie. It was released for PlayStation 4 and Xbox One on September 6, 2017, followed by a Microsoft Windows version the following month.", photo_url: "https://www.gamerwithadegree.com/wp-content/gallery/destiny-2-shots-hi-res/Destiny2Shots_HiRes4k_017.jpg")
Article.create!(user: User.last, title: "No man's sky", body: "No Man's Sky is an exploration survival game developed and published by the indie studio Hello Games. It was released worldwide for the PlayStation 4 and Microsoft Windows in August 2016, and for Xbox One in July 2018. The game is built around four pillars: exploration, survival, combat, and trading.", photo_url: "https://nmswp.azureedge.net/wp-content/uploads/2019/08/nms-beyond-book-cover.png")
Article.create!(user: User.last, title: "Star wars: fallen order", body: "Five years after the execution of Order 66 and the beginning of the Great Jedi Purge, former Jedi Padawan Cal Kestis is in hiding from the newly risen Galactic Empire. On the planet Bracca, where he works as a scrapper salvaging ships from the Clone Wars, Cal uses the Force to save his friend Prauf from falling to his death. The incident is recorded by an Imperial Probe Droid who relays the information to the Empire. The Empire sends two Inquisitors known as the Second Sister and the Ninth Sister to pursue Cal. After they kill Prauf, Cal makes his escape, briefly engaging the Second Sister before being rescued by a former Jedi Knight named Cere Junda and her partner pilot Greez Dritus in their ship, the Stinger Mantis.", photo_url: "https://steamcdn-a.akamaihd.net/steam/apps/1172380/capsule_616x353.jpg?t=1573959140")
puts "created #{Article.count} Articles"

Discussion.create!(user: User.first, article: Article.first, title: "Walkthrough")
Discussion.create!(user: User.first, article: Article.first, title: "Popularity of GTA franchise!")
Discussion.create!(user: User.first, article: Article.first, title: "How is it still so popular after many years?")
Discussion.create!(user: User.first, article: Article.first, title: "Help me with the bank robbery mission")
Discussion.create!(user: User.first, article: Article.first, title: "Anyone has some cool cheats?")
Discussion.create!(user: User.first, article: Article.first, title: "Can I crossplay (ps4/xbox1)")
Discussion.create!(user: User.last,  article: Article.last, title: "Walkthrough")
Discussion.create!(user: User.last,  article: Article.last, title: "Is it as good as the reviews say")
Discussion.create!(user: User.last,  article: Article.last, title: "How to change the lightsaber color?")
Discussion.create!(user: User.last,  article: Article.last, title: "Who knows the history of bd-1?")
Discussion.create!(user: User.last,  article: Article.last, title: "Cannot beat second sister in the cave!")
Discussion.create!(user: User.last,  article: Article.last, title: "When is it set in times?")
puts "created #{Discussion.count} Discussions"

SubDiscussion.create!(title: "my walkthrough", discussion: Discussion.first)
SubDiscussion.create!(title: "marcus walkthrough", discussion: Discussion.first)
SubDiscussion.create!(title: "walkthrough1", discussion: Discussion.first)
SubDiscussion.create!(title: "walkthrough2", discussion: Discussion.first)
SubDiscussion.create!(title: "walkthrough3", discussion: Discussion.first)
SubDiscussion.create!(title: "walkthrough4", discussion: Discussion.first)
SubDiscussion.create!(title: "between episode 3 and 4", discussion: Discussion.last)
SubDiscussion.create!(title: "5 years after Anakin goes darth", discussion: Discussion.last)
SubDiscussion.create!(title: "After episode 3", discussion: Discussion.last)
SubDiscussion.create!(title: "Before episode 4", discussion: Discussion.last)
SubDiscussion.create!(title: "Around rouge 1", discussion: Discussion.last)
SubDiscussion.create!(title: "far far away", discussion: Discussion.last)
puts "created #{SubDiscussion.count} SubDiscussions"


SubDiscussion.all.each do |subdisc|
  rand(3..5).times do
    Comment.create!(content: Faker::Games::WorldOfWarcraft.quote, user: User.all.sample, sub_discussion: subdisc)
  end
end
puts "created #{Comment.count} Comments"
