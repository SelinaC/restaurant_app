module UserData

  def self.create_demo_users
    user1 = User.new
    user1.username = "AAGill"
    user1.first_name = "Adrian Anthony"
    user1.last_name = "Gill"
    user1.email = 'aagill@aagill.com'
    user1.password = "password"
    user1.role = "professional"
    user1.save!

    user2 = User.new
    user2.username = "Nigella"
    user2.first_name = "Nigella"
    user2.last_name = "Lawson"
    user2.email = 'nigella@nigella.com'
    user2.password = "password"
    user2.role = "professional"
    user2.save!

    user3 = User.new
    user3.username = "Jun"
    user3.first_name = "Jun"
    user3.last_name = "Tanaka"
    user3.email = 'jun@juntanaka.com'
    user3.password = "password"
    user3.role = "professional"
    user3.save!

    user4 = User.new
    user4.username = "Yotam"
    user4.first_name = "Yotam"
    user4.last_name = "Ottolenghi"
    user4.email = 'yotam@yotam.com'
    user4.password = "password"
    user4.role = "professional"
    user4.save!

    user5 = User.new
    user5.username = "Jamie"
    user5.first_name = "Jamie"
    user5.last_name = "Oliver"
    user5.email = 'jamie@jamieoliver.com'
    user5.password = "password"
    user5.role = "professional"
    user5.save!

    user6 = User.new
    user6.username = "JohnWilliams"
    user6.first_name = "John"
    user6.last_name = "Williams"
    user6.email = 'john@johnwilliams.com'
    user6.password = "password"
    user6.role = "professional"
    user6.save!

    user7 = User.new
    user7.username = "JeremyBrown"
    user7.first_name = "Jeremy"
    user7.last_name = "Brown"
    user7.email = 'jeremy@jeremybrown.com'
    user7.password = "password"
    user7.role = "professional"
    user7.save!

    user8 = User.new
    user8.username = "AdamJohnson"
    user8.first_name = "Adam"
    user8.last_name = "Johnson"
    user8.email = 'adam@adamjohnson.com'
    user8.password = "password"
    user8.role = "professional"
    user8.save!

    user9 = User.new
    user9.username = "MartynNail"
    user9.first_name = "Martyn"
    user9.last_name = "Nail"
    user9.email = 'martyn@martynnail.com'
    user9.password = "password"
    user9.role = "professional"
    user9.save!

    user10 = User.new
    user10.username = "AndrewTurner"
    user10.first_name = "Andrew"
    user10.last_name = "Turner"
    user10.email = 'andrew@andrewturner.com'
    user10.password = "password"
    user10.role = "professional"
    user10.save!

    user11 = User.new
    user11.username = "GordonRamsay"
    user11.first_name = "Gordon"
    user11.last_name = "Ramsay"
    user11.email = 'gordon@gordonramsay.com'
    user11.password = "password"
    user11.role = "professional"
    user11.save!

    user12 = User.new
    user12.username = "TomAikens"
    user12.first_name = "Tom"
    user12.last_name = "Aikens"
    user12.email = 'tom@tomaikens.com'
    user12.password = "password"
    user12.role = "professional"
    user12.save!

    user13 = User.new
    user13.username = "AndyCook"
    user13.first_name = "Andy"
    user13.last_name = "Cook"
    user13.email = 'andy@andycook.com'
    user13.password = "password"
    user13.role = "professional"
    user13.save!

    user14 = User.new
    user14.username = "NickNairn"
    user14.first_name = "Nick"
    user14.last_name = "Nairn"
    user14.email = 'nick@nicknairn.com'
    user14.password = "password"
    user14.role = "professional"
    user14.save!

    user15 = User.new
    user15.username = "SimonChristeyFrench"
    user15.first_name = "Simon"
    user15.last_name = "Christey-French"
    user15.email = 'simon@simonchristeyfrench.com'
    user15.password = "password"
    user15.role = "professional"
    user15.save!

    user16 = User.new
    user16.username = "Foodie"
    user16.first_name = "Foodie"
    user16.last_name = ""
    user16.email = 'foodie@foodie.com'
    user16.password = "password"
    user16.role = "foodie"
    user16.save!

    user17 = User.new
    user17.username = "Admin"
    user17.first_name = "Administrator"
    user17.last_name = ""
    user17.email = 'admin@cookedup.com'
    user17.password = "password"
    user17.role = "admin"
    user17.save!

    # Michael Davies, head sommelier, pearl
    # armand sablon
    # Jacques Beauregard, cinnamon club
    # Smiljan Galic, hakkasan
    # Balint Haui, galvin bistrot de luxe
    # Frederic TANOH, head sommelier, pearl
    # fabrice cune, l'escargot
    # Daniel Doherty, duck and waffle
    # Jens Fölkel, previously at axis

    # ANNA HANSEN, The Modern Pantry
    # FERGUS HENDERSON, St John
    # THEO RANDALL at the Intercontinental
    # MARCUS WAREING at The Berkeley Hotel
    # HESTON BLUMENTHAL, Dinner
    # ANGELA HARTNETT, Murano
    # NUNO MENDES, Viajante
    # BRUNO LOUBET, Bistro Bruno Loubet
    # OMAR ALLIBHOY, Tapas Revolution
    # SAMANTHA AND SAMUEL CLARK, Moro and Morito

    # OTTOLENGHI (287 Upper Street, N1; ottolenghi.co.uk)
    # GALVIN LA CHAPELLE (35 Spital Square, E1)
    # SWEETINGS: (39 Queen Victoria Street, EC4)
    # JADE GARDEN: (15 Wardour Street, W1)
    # ST JOHN BAR AND RESTAURANT (26 St John Street, EC1)
    # LA PETITE MAISON (53-54 Brook’s Mews, W1)
    # PRINCESS GARDEN OF MAYFAIR (8-10 North Audley Street, W1)
    # MEDLAR (438 Kings Road, SW10)
    # CHEZ BRUCE (2 Bellevue Road, SW17)
    # RIVA (169 Church Road, SW13)
    # THE RIVER CAFE (Thames Wharf, Rainville Road, W6)
    # BRAWN (49 Columbia Road, E2)
    # THE MODERN PANTRY (47-48 St. John’s Square, EC1V)
    # KIKUCHI (14 Hanway Street, W1)
    # YUM BUN (Broadway Market School Yard, Westgate Street, E8)
    # ROCHELLE CANTEEN (Arnold Circus, E2)
    # LEILA’S CAFE (17 Calvert Avenue, E2)
    # ST JOHN BREAD AND WINE (94-96 Commercial Street, E1)
    # SPUNTINO (61 Rupert Street, W1)
    # BAR BOULUD (Mandarin Oriental Hyde Park, 66 Knightsbridge, SW1X)
    # YALLA YALLA (1 Green’s Court, W1F)
    # KHAN’S (13-15 Westbourne Grove, W2)
    # LOCALE (222 Munster Road, SW6)
    # BISTRO DE LUXE (66 Baker Street, W1)
    # DOCK KITCHEN (Portobello Docks, 344-342 Ladbroke Grove, W10)
    # SOMINE (131 Kingsland High Street, E8)

  end
end
