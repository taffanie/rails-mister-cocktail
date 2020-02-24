require 'faker'

# artist

12.times do

  User.create!(
    user_name: Faker::FunnyName.name,
    email: Faker::Internet.email,
    avatar: url("https://www.tx2.fr/wp-content/uploads/2018/11/avatar_jeune_homme_lunettes_developpeur_geek.jpg"),
    artist: true,
    artist_name: Faker::Music.band,
    description: Faker::TvShows::Friends.quote,
    location: Faker::Address.city,
    genre: Faker::Music.genre,
    price: Faker::Number.decimal(l_digits: 2),
    photos: url("https://9b16f79ca967fd0708d1-2713572fef44aa49ec323e813b06d2d9.ssl.cf2.rackcdn.com/1140x_a10-7_cTC/GH-Band-Playing-jpg-1559750190.jpg"))

end

# user

12.times do

  User.create!(
    user_name: Faker::Name.first_name,
    email: Faker::Internet.email,
    avatar: url("https://www.shareicon.net/data/512x512/2016/08/18/814068_face_512x512.png"),
    artist: false)

end
