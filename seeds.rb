user_sharky = User.new({ username: "sharky_j", avatar_url: "http://naserca.com/images/sharky_j.jpg", email: "sharky_j@gmail.com", password: "abcd" })
user_sharky.save

finstagram_post_sharky = FinstagramPost.new({ photo_url: "http://naserca.com/images/shark.jpg", user_id: user_sharky.id })
finstagram_post_sharky.save

user_kirk = User.new({ username: "kirk_whalum", avatar_url: "http://naserca.com/images/kirk_whalum.jpg", email: "kirk_w@gmail.com", password: "abcd" })
user_kirk.save

finstagram_post_kirk = FinstagramPost.new({ photo_url: "http://naserca.com/images/whale.jpg", user_id: user_kirk.id })
finstagram_post_kirk.save

user_peppa = User.new({ username: "marlin_peppa", avatar_url: "http://naserca.com/images/marlin_peppa.jpg", email: "marlin_p@gmail.com", password: "abcd" })
user_peppa.save

finstagram_post_peppa = FinstagramPost.new({ photo_url: "http://naserca.com/images/marlin.jpg", user_id: user_peppa.id })
finstagram_post_peppa.save