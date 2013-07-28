# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Seed biz_feats
BizFeats.create(name: 'Local Ingredients')
BizFeats.create(name: 'Organic Products')
BizFeats.create(name: 'Vegan Products')
BizFeats.create(name: 'Gluten-Free Products')

# Seed biz_types
BizTypes.create(name: 'Restaurant/Cafe')
BizTypes.create(name: 'Tea/Coffee Shop')
BizTypes.create(name: "Farmer's Market")
BizTypes.create(name: 'Grocery Store')

# Seed todo_list
TodoList.create(contact_email: 'test@example.com', feature_name: 'test')