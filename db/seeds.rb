# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.destroy_all
Project.destroy_all
FinishedProject.destroy_all

Student.create name: "Alex Covarrubias"
Student.create name: "Ayaz Merchant"

week1 = Project.create title: "Concert Schedule", description: "Band list", assigned: "2014-06-12",
due: "2014-06-16"

week2 = Project.create title: "Blackjack", description: "A card game", assigned: "2014-06-19",
due: "2014-06-23"

week3 = Project.create title: "TDD App", description: "Test Driven Dev",
assigned: "2014-06-26", due: "2014-06-30"

[week1, week2, week3].each do |title|
  Student.all.each do |name|
    FinishedProject.create student: name, project: title, submitted: [true, false].sample,
    repo: ":)"
  end
end

# FinishedProject.create student: "Alex Covarrubias", project: "Concert Schedule",
# submitted: true, repo: "http://"
#
# FinishedProject.create student: "Ayaz Merchant", project: "Concert Schedule",
# submitted: true, repo: "http://"
