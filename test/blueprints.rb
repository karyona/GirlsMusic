require 'machinist/active_record'

# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end

Artist.blueprint do
  name {"Aritst #{sn}"}
  sex rand(1)
  description {"This is artist #{sn}"}
end

Album.blueprint do
  artist
  name {"Album #{sn}"}
  description {"This is album #{sn}"}
  pub_date Date.today - rand(5).to_i
end

Track.blueprint do 
  album
  number rand(10)
  name {"Track #{sn}"}
  duration rand(100)
end