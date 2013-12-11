# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

FactualData.get_data_by_local_authority
FactualData.save_to_db
FoodHygieneData.get_hygiene_rating

UserData.create_demo_users
ReviewData.create_demo_reviews
JobData.create_resumes
