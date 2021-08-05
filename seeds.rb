user_sharky = User.new({ username: "sharky_j", 
                        avatar_url: "http://naserca.com/images/sharky_j.jpg",
                        email: "sharky@lhl.com",
                        password: "abc123"})
user_sharky.save
sharky_fp = FinstagramPost.new({ photo_url: "http://naserca.com/images/shark.jpg",
                                 user_id: user_sharky.id })
sharky_fp.save


user_kirk = User.new({ username: "kirk_whalum", 
                        avatar_url: "http://naserca.com/images/kirk_whalum.jpg",
                        email: "kirk@lhl.com",
                        password: "abc123" })
user_kirk.save

kirk_fp = FinstagramPost.new({ photo_url: "http://naserca.com/images/whale.jpg", user_id: user_kirk.id })
kirk_fp.save


user_peppa = User.new({ username: "marlin_peppa", 
                        avatar_url: "http://naserca.com/images/marlin_peppa.jpg",
                        email: "peppa@lhl.com",
                        password: "abc123" })
user_peppa.save

peppa_fp = FinstagramPost.new({ photo_url: "http://naserca.com/images/marlin.jpg", user_id: user_peppa.id })
peppa_fp.save


comment = Comment.new({ user_id: user_sharky.id, finstagram_post_id: sharky_fp.id, text: "this is awesome!" })
comment.save

like = Like.new({ user_id: user_sharky.id, finstagram_post_id: sharky_fp.id })
like.save
