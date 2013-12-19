module JobData

  def self.create_resumes

  # John Williams
    job1 = Job.new
    job1.employed_from = "01-06-2004"
    job1.employed_to = "31-12-2013"
    job1.job_title = "Executive Chef"
    job1.user_id = User.where(username: "JohnWilliams").first.id
    job1.restaurant_id = Restaurant.where(name: "The Ritz London").first.id
    job1.save!
    # The Ritz London

    job2 = Job.new
    job2.employed_from = "01-6-2004"
    job2.employed_to = "31-12-2013"
    job2.job_title = "Executive Chairman"
    job2.user_id = User.where(username: "JohnWilliams").first.id
    # job2.restaurant_id = Restaurant.where(name: "").first.id
    job2.save!
    # The Academy of Culinary Arts

    job3 = Job.new
    job3.employed_from = "01-01-1984"
    job3.employed_to = "31-05-2004"
    job3.job_title = "Executive chef"
    job3.user_id = User.where(username: "JohnWilliams").first.id
    job3.restaurant_id = Restaurant.where(name: "The Savoy Grill").first.id
    job3.save!
    # Savoy group

    job4 = Job.new
    job4.employed_from = "01-01-1976"
    job4.employed_to = "31-01-1985"
    job4.job_title = "Chef"
    # job1.user_id =
    # job1.restaurant_id =
    job4.save!
    # The Royal Garden

  # Jeremy Brown

    job5 = Job.new
    job5.employed_from = "01-06-2012"
    job5.employed_to = "31-12-2013"
    job5.job_title = "Executive Head Chef"
    job5.user_id = User.where(username: "JeremyBrown").first.id
    # job5.restaurant_id =
    job5.save!
    # Home House

    job6 = Job.new
    job6.employed_from = "01-01-2006"
    job6.employed_to = "31-05-2012"
    job6.job_title = "Executive Sous Chef"
    job6.user_id = User.where(username: "JeremyBrown").first.id
    job6.restaurant_id = Restaurant.where(name: "The Ritz London").first.id
    job6.save!
    # The Ritz London

    job7 = Job.new
    job7.employed_from = "01-05-2002"
    job7.employed_to = "31-12-2005"
    job7.job_title = "Executive Head Chef"
    job7.user_id = User.where(username: "JeremyBrown").first.id
    job7.restaurant_id = Restaurant.where(name: "Chez Nico Restaurants").first.id
    job7.save!
    # Chez Nico Restaurants

    job8 = Job.new
    job8.employed_from = "01-01-1995"
    job8.employed_to = "31-12-2002"
    job8.job_title = "Head Chef"
    job8.user_id = User.where(username: "JeremyBrown").first.id
    # job1.restaurant_id =
    job8.save!
    # Marco Pierre White

    job9 = Job.new
    job9.employed_from = "01-01-1993"
    job9.employed_to = "31-12-1994"
    job9.job_title = "Commis Chef"
    job9.user_id = User.where(username: "JeremyBrown").first.id
    job9.restaurant_id = Restaurant.where(name: "Quadrato at the Four Seasons Hotel London").first.id
    job9.save!
    # Four Seasons Hotel London

  # Adam Johnson
    job10 = Job.new
    job10.employed_from = "01-10-2006"
    job10.employed_to = "31-12-2013"
    job10.job_title = "Development Chef to Raymond Blanc"
    job10.user_id = User.where(username: "AdamJohnson").first.id
    # job10.restaurant_id =
    job10.save!
    # Le Manoir aux Quat'Saisons

    job11 = Job.new
    job11.employed_from = "01-10-2005"
    job11.employed_to = "30-09-2006"
    job11.job_title = "Demi Chef de Partie"
    job11.user_id = User.where(username: "AdamJohnson").first.id
    # job11.restaurant_id =
    job11.save!
    # Le Manoir aux Quat'Saisons

    job12 = Job.new
    job12.employed_from = "01-04-2004"
    job12.employed_to = "30-09-2005"
    job12.job_title = "Commis Chef"
    job12.user_id = User.where(username: "AdamJohnson").first.id
    # job12.restaurant_id =
    job12.save!
    # Le Manoir aux Quat'Saisons

    job13 = Job.new
    job13.employed_from = "01-09-2002"
    job13.employed_to = "31-03-2004"
    job13.job_title = "Chef de Partie"
    job13.user_id = User.where(username: "AdamJohnson").first.id
    # job13.restaurant_id =
    job13.save!
    # Hundred House Hotel

    job14 = Job.new
    job14.employed_from = "01-09-1997"
    job14.employed_to = "31-08-2002"
    job14.job_title = "Head Chef"
    job14.user_id = User.where(username: "AdamJohnson").first.id
    # job1.restaurant_id =
    job14.save!
    # Odfellows Wine Bar

  # Martyn Nail

    job15 = Job.new
    job15.employed_from = "01-01-1988"
    job15.employed_to = "31-12-2013"
    job15.job_title = "executive chef"
    job15.user_id = User.where(username: "MartynNail").first.id
    job15.restaurant_id = Restaurant.where(name: "Claridge's").first.id
    job15.save!
    # Claridge's, Maybourne Hotel Group

  # Andrew Turner

    job16 = Job.new
    job16.employed_from = "01-06-2012"
    job16.employed_to = "31-12-2013"
    job16.job_title = "Executive chef"
    job16.user_id = User.where(username: "AndrewTurner").first.id
    # job1.restaurant_id =
    job16.save!
    # CAFE ROYAL

    job17 = Job.new
    job17.employed_from = "01-05-2012"
    job17.employed_to = "31-05-2012"
    job17.job_title = "Head Chef"
    job17.user_id = User.where(username: "AndrewTurner").first.id
    # job1.restaurant_id =
    job17.save!
    # Wiltons

    job18 = Job.new
    job18.employed_from = "01-09-2006"
    job18.employed_to = "31-10-2009"
    job18.job_title = "Executive chef"
    job18.user_id = User.where(username: "AndrewTurner").first.id
    job18.restaurant_id = Restaurant.where(name: "Roux at the Landau").first.id
    job18.save!
    # Landau and Langham hotel

  # Gordon Ramsay
    job19 = Job.new
    job19.employed_from = "01-01-2001"
    job19.employed_to = "31-12-2013"
    job19.job_title = "Entrepreneur in Culinary Arts"
    job19.user_id = User.where(username: "GordonRamsay").first.id
    job19.restaurant_id = Restaurant.where(name: "Gordon Ramsay Holdings").first.id
    job19.save!
    # Gordon Ramsay

  # Tom Aikens

    job20 = Job.new
    job20.employed_from = "01-04-2003"
    job20.employed_to = "31-12-2013"
    job20.job_title = "Head Chef / Restauranteur"
    job20.user_id = User.where(username: "TomAikens").first
    # job1.restaurant_id =
    job20.save!
    # Tom Aikens

  # Andy Cook

    job21 = Job.new
    job21.employed_from = "01-12-2010"
    job21.employed_to = "31-12-2013"
    job21.job_title = "Head Chef"
    job21.user_id = User.where(username: "AndyCook").first.id
    job21.restaurant_id = Restaurant.where(name: "The Savoy Grill").first.id
    job21.save!
    # The Savoy Grill

    job22 = Job.new
    job22.employed_from = "01-01-2008"
    job22.employed_to = "31-12-2010"
    job22.job_title = "Exec Chef"
    job22.user_id = User.where(username: "AndyCook").first.id
    # job1.restaurant_id =
    job22.save!
    # LXR Hotels and resorts

  # Nick Nairn

    job23 = Job.new
    job23.employed_from = "01-01-2000"
    job23.employed_to = "31-12-2013"
    job23.job_title = "Owner"
    job23.user_id = User.where(username: "NickNairn").first.id
    # job1.restaurant_id =
    job23.save!
    # Nick Nairn Cook School

    job24 = Job.new
    job24.employed_from = "01-01-1990"
    job24.employed_to = "31-12-2013"
    job24.job_title = "Owner"
    job24.user_id = User.where(username: "NickNairn").first.id
    # job1.restaurant_id =
    job24.save!
    # Nick Nairn Enterprise

    # Jun Tanaka

    job25 = Job.new
    job25.employed_from = "01-06-2004"
    job25.employed_to = "31-12-2013"
    job25.job_title = "Executive chef"
    job25.user_id = User.where(username: "Jun").first.id
    job25.restaurant_id = Restaurant.where(name: "Pearl Restaurant and Bar").first.id
    job25.save!

    # Simon Christey-French

    job26 = Job.new
    job26.employed_from = "01-09-2012"
    job26.employed_to = "31-12-2013"
    job26.job_title = "Head Chef"
    job26.user_id = User.where(username: "SimonChristeyFrench").first.id
    job26.restaurant_id = Restaurant.where(name: "The Chancery").first.id
    job26.save!
    # The Chancery Restaurant

    job27 = Job.new
    job27.employed_from = "01-09-2010"
    job27.employed_to = "31-12-2013"
    job27.job_title = "Head Chef"
    job27.user_id = User.where(username: "SimonChristeyFrench").first.id
    job27.restaurant_id = Restaurant.where(name: "Pearl Restaurant and Bar").first.id
    job27.save!
    # Pearl Restaurant and Bar

    job28 = Job.new
    job28.employed_from = "01-12-2009"
    job28.employed_to = "31-10-2010"
    job28.job_title = "Sous Chef"
    job28.user_id = User.where(username: "SimonChristeyFrench").first.id
    job28.restaurant_id = Restaurant.where(name: "Pearl Restaurant and Bar").first.id
    job28.save!
    # Pearl Restaurant and Bar

    job29 = Job.new
    job29.employed_from = "01-07-2009"
    job29.employed_to = "31-11-2009"
    job29.job_title = "Jr Sous Chef"
    job29.user_id = User.where(username: "SimonChristeyFrench").first.id
    job29.restaurant_id = Restaurant.where(name: "Pearl Restaurant and Bar").first.id
    job29.save!
    # Pearl Restaurant and Bar

    job30 = Job.new
    job30.employed_from = "01-04-2009"
    job30.employed_to = "30-06-2009"
    job30.job_title = "Sous Chef"
    job30.user_id = User.where(username: "SimonChristeyFrench").first.id
    job30.restaurant_id = Restaurant.where(name: "The Soho Hotel").first.id
    job30.save!
    # The Soho Hotel

    job31 = Job.new
    job31.employed_from = "01-08-2008"
    job31.employed_to = "31-03-2009"
    job31.job_title = "Sous Chef"
    job31.user_id = User.where(username: "SimonChristeyFrench").first.id
    # job31.restaurant_id = Restaurant.where(name: "").first.id
    job31.save!
    # Virgin Limited Edition

    job32 = Job.new
    job32.employed_from = "01-08-2008"
    job32.employed_to = "31-03-2009"
    job32.job_title = "Sous Chef"
    job32.job_description = "Responsible for the coordination of catering across the whole island. Responsibilities included menu planning, managing staff rotas and overtime, liaising with guests regarding food requirements, stock control, liaising with overseas suppliers, coordinating deliveries and sourcing produce."
    job32.user_id = User.where(username: "SimonChristeyFrench").first.id
    # job32.restaurant_id = Restaurant.where(name: "").first.id
    job32.save!
    # Sir Richard Branson's private resort, Necker Island, in the BVI, Caribbean.

    job33 = Job.new
    job33.employed_from = "01-04-2008"
    job33.employed_to = "31-08-2008"
    job33.job_title = "Chef"
    job33.job_description = "Events catering for high-end corporate and private events."
    job33.user_id = User.where(username: "SimonChristeyFrench").first.id
    # job33.restaurant_id = Restaurant.where(name: "").first.id
    job33.save!
    # Rhubarb Events Limited
    # I was responsible for menu design and delivery, as well as coordinating the kitchen team in-house and on-site. I worked alongside the events Chefs to add Michelin influences across the menus.

    job34 = Job.new
    job34.employed_from = "01-03-2005"
    job34.employed_to = "31-03-2008"
    job34.job_title = "Senior Chef de Partie"
    job34.job_description = "As a senior staff member I was responsible for training new staff on different sections."
    job34.user_id = User.where(username: "SimonChristeyFrench").first.id
    job34.restaurant_id = Restaurant.where(name: "The Square").first.id
    job34.save!
    # The Square
    # Head Chef: Phil Howard. 4 rosettes, 2 Michelin stars.

    job35 = Job.new
    job35.employed_from = "01-12-2003"
    job35.employed_to = "31-03-2005"
    job35.job_title = "Demi Chef de Partie"
    job35.job_description = "I worked at Gidleigh Park for 18 months and moved around the kitchen, covering each section except meat."
    job35.user_id = User.where(username: "SimonChristeyFrench").first.id
    # job35.restaurant_id = Restaurant.where(name: "The Square").first.id
    job35.save!
    # Gidleigh Park, Devon.
    # Head Chef: Michael Caines. 4 rosettes, 2 Michelin stars.

    # job36 = Job.new
    # job36.employed_from = ""
    # job36.employed_to = ""
    # job36.job_title = "Commis Chef"
    # job36.job_description = ""
    # job36.user_id = User.where(username: "SimonChristeyFrench").first.id
    # job36.restaurant_id = Restaurant.where(name: "The Square").first.id
    # job36.save!
    # The Horn of Plenty, Devon

    job37 = Job.new
    # job37.employed_from = ""
    # job37.employed_to = ""
    job37.job_title = "Owner"
    # job37.job_description = ""
    job37.user_id = User.where(username: "AnnaHansen").first.id
    job37.restaurant_id = Restaurant.where(name: "The Modern Pantry").first.id
    job37.save!


  end
end


# Jean_Baptiste Requien

  # General Manager
  # D&D London
  # August 2010 – Present (3 years 5 months)

  # Gordon Ramsay HoldingsGroup Front of House Manager
  # Gordon Ramsay Holdings
  # September 2008 – January 2010 (1 year 5 months)

  # Restaurant Director
  # Gordon Ramsay at The London NYC
  # September 2006 – August 2008 (2 years)

  # Restaurant Manager
  # Gordon Ramsay at Claridge's
  # September 2004 – August 2006 (2 years)

  # Revenue Accountant
  # Conran Restaurants
  # July 2001 – August 2004 (3 years 2 months)

# Adam Gray

  # Executive Chef
  # Skylon Restaurant
  # March 2013 – Present (10 months)Royal Festival Hall,Southbank Centre, Belvedere Road,London, SE1 8XX
  # (Open)4 organizations
  # Co-owner
  # The Red Lion Hotel
  # August 2010 – January 2013 (2 years 6 months)East Haddon,Northamptonshire
  # Michelin Bib Gourmand in 2011/12 and 2012/13.
  # Editors Choice's top ten "Country Pubs" in 2012 Good Food Guide
  # Featured in "Relish Midlands" cookbook
  # Head Chef
  # Rhodes Twenty Four
  # March 2003 – September 2011 (8 years 7 months)Tower 42, 25 Old Broad Street,London EC2N 1HQ
  # 1 Michelin Star
  # 3 AA rosettes
  # Square Meal Guide - Best new restaurant spring 2004
  # Head Chef
  # City Rhodes
  # January 2001 – March 2003 (2 years 3 months)1 New Street Square, London, EC4A 3BF
  # 1 Michelin Star
  # 3 AA Rosettes
  # Head Chef
  # Che Restaurant
  # November 1999 – December 2000 (1 year 2 months)23 St James Street, London, SW1A 1HE
  # Head Chef
  # Coast Restaurant
  # February 1998 – October 1999 (1 year 9 months)26b Albermarle Street, London, W1X 3FE
  # 3 AA Rosettes
  # Winner of Time Out "Best large Restaurant" award 1999
  # Featured in "Mushrooms" cookbook
  # Head Chef
  # The Millennium Chelsea Hotel
  # January 1997 – January 1998 (1 year 1 month)17 Sloane Street, London, SW1V 9AU
  # 4 Star Deluxe Hotel
  # 2 AA Rosette Restaurant
  # Head Chef
  # The Glasshouse Restaurant
  # April 1995 – April 1996 (1 year 1 month)Ambleside, Cumbria
  # Consultant
  # Coral Reef Club
  # December 1994 – April 1995 (5 months)Barbados, West Indies
  # Relais Chateaux, Small Luxury Hotel
  # Le Manoir aux Quat'SaisonsChef de Partie
  # Le Manoir aux Quat'Saisons
  # July 1993 – December 1994 (1 year 6 months)Great Milton, Oxford
  # 2 Michelin Stars
  # Relais Chateaux Gourmand
  # 5 AA Rosettes
  # Chef de Partie
  # Cambray's Restaurant
  # October 1992 – June 1993 (9 months)North Carlton, Melbourne, Australia
  # Chef de Partie
  # Browns Restaurant
  # July 1992 – October 1992 (4 months)Melbourne, Australia
  # Four Seasons RestaurantCommis to Chef de Partie
  # Four Seasons Restaurant
  # November 1989 – June 1992 (2 years 8 months)Inn on the Park Hotel, Hamilton Place, London
  # 5 Star Hotel
  # 1 Michelin Star restaurant
  # Commis Chef
  # English House Restaurant
  # September 1989 – November 1989 (3 months)Chelsea, London, SW3
  # Commis Chef
  # Fifehead Manor Hotel,
  # November 1988 – September 1989 (11 months)Middle Wallop, Hampshire
  # Apprentice
  # Broomhill Hotel
  # November 1987 – November 1988 (1 year 1 month)Spratton,Northamptonshire
  # Apprentice
  # The Red Lion Hotel
  # September 1986 – November 1987 (1 year 3 months)East Haddon, Northamptonshire
  # Organizations

  # Hope Enterprises Charity
  # Honorary Patron
  # Northamptonshire Ambassadors
  # Ambassador
  # Baumatic UK
  # Brand Ambassador
  # Academy of Culinary Arts
  # Member

