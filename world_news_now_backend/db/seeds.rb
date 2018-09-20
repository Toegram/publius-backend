# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tony = User.create(name: "Tony", age: 30, country: "USA")
danielle = User.create(name: "Danielle", age: 31, country: "Canada")
jared = User.create(name: "Jared", age: 31, country: "Mexico")
claudia = User.create(name: "Claudia", age: 32, country: "France")
sean = User.create(name: "Sean", age: 26, country: "Arizona")

espn = News.create(url: "http://www.espn.com/nfl/story/_/id/24716797/what-learned-week-2-2018-nfl-season-josh-gordon-lottery-ticket-pay-new-england-patriots")
vet = News.create(url: "http://veterinarynews.dvm360.com/letter-dvm360-hot-water-bottles-hot-seat")
foxnews = News.create(url: "http://www.foxnews.com/politics/2018/09/17/trump-orders-feds-to-declassify-key-fisa-documents-text-messages-in-fbi-russia-probe.html")
goodreads = News.create(url: "https://www.huffingtonpost.com/topic/goodreads")
elon = News.create(url: "https://www.inverse.com/article/45780-elon-musk-joe-rogan-podcast")


UserNews.create(user_id: 1, news_id: 1)
UserNews.create(user_id: 2, news_id: 2)
UserNews.create(user_id: 3, news_id: 3)
UserNews.create(user_id: 4, news_id: 4)
UserNews.create(user_id: 5, news_id: 5)
