module UserData

  def self.create_demo_users
    user1 = User.new
    user1.username = "AAGill"
    user1.first_name = "Adrian Anthony"
    user1.last_name = "Gill"
    user1.email = 'aagill@aagill.com'
    user1.password = "password"
    user1.save!

    user2 = User.new
    user2.username = "Nigella"
    user2.first_name = "Nigella"
    user2.last_name = "Lawson"
    user2.email = 'nigella@nigella.com'
    user2.password = "password"
    user2.save!

    user3 = User.new
    user3.username = "Jun"
    user3.first_name = "Jun"
    user3.last_name = "Tanaka"
    user3.email = 'jun@jun.com'
    user3.password = "password"
    user3.save!

    user4 = User.new
    user4.username = "Yotam"
    user4.first_name = "Yotam"
    user4.last_name = "Ottolenghi"
    user4.email = 'yotam@yotam.com'
    user4.password = "password"
    user4.save!

    user5 = User.new
    user5.username = "Jamie"
    user5.first_name = "Jamie"
    user5.last_name = "Oliver"
    user5.email = 'jamie@jamie.com'
    user5.password = "password"
    user5.save!
  end
end
