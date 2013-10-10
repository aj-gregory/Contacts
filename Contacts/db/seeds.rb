# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = User.create([{name: 'Bob', email: 'bob@bob.com'}, {name: 'Joe', email: 'joe@bob.com'}, {name: 'Hank', email: 'hank@bob.com'}])

c = Contact.create([{email: 'joe@bob.com', name: 'Joe', user_id: 1}])

g = Group.create({name: 'Cool kids', user_id: 1})

cg = ContactGroup.create([{contact_id: 2, group_id: 1}, {contact_id: 3, group_id: 1}])

Comment.create([{user_id: 1, contact_id: 1, body: 'this guy sucks'}, {user_id: 2, contact_id: 1, body:'best dude'}])