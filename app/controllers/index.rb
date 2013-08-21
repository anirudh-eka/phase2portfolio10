get '/' do
  graph = Koala::Facebook::API.new
  @anirudh_name = graph.get_object("Anirudh.eka")["name"]
  @anirudh_pic = graph.get_picture("Anirudh.eka", type: 'large')
  @sacpoe_pic = graph.get_connections("SacPoe", "photos").last["source"]
  erb :index
end
