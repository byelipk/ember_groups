# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Pat", email: "pat123@gmail.com")
User.create(name: "Dan", email: "dan123@gmail.com")
User.create(name: "Julie", email: "julie123@gmail.com")
User.create(name: "April", email: "april123@gmail.com")
User.create(name: "Greg", email: "greg123@gmail.com")
User.create(name: "Jose", email: "jose123@gmail.com")

Group.create(user_id: 1, name: "Bart's and Hobart's")
Group.create(user_id: 2, name: "Turls and Cacos")
Group.create(user_id: 3, name: "Swirls")

# Group 1
Membership.create(user_id: 2, group_id: 1)
Membership.create(user_id: 3, group_id: 1)
Membership.create(user_id: 4, group_id: 1)
Membership.create(user_id: 5, group_id: 1)
Membership.create(user_id: 6, group_id: 1)

# Group 2
Membership.create(user_id: 1, group_id: 2)
Membership.create(user_id: 5, group_id: 2)

# Group 3
Membership.create(user_id: 6, group_id: 3)
Membership.create(user_id: 2, group_id: 3)
