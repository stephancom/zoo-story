# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


['Central Park', 'Bronx', 'Prospect Park', 'Queens', 'Staten Island', 'Lincoln Park', 'Brookfield'].each do |name|
    Zoo.where(name: name).first_or_create!
end

I18n::t('.species').sort.each do |name|
  Species.where(name: name).first_or_create!
end