User.destroy_all
Project.destroy_all
FinishedProject.destroy_all

leo = User.create! name: "Leonardo", email: "leo@sewers.com",
password: "pizzapizza", password_confirmation: "pizzapizza"

don = User.create! name: "Donatello", email: "don@sewers.com",
password: "pizzapizza", password_confirmation: "pizzapizza"

mike = User.create! name: "Michelangelo", email: "mike@sewers.com",
password: "pizzapizza", password_confirmation: "pizzapizza"

raph = User.create! name: "Raphael", email: "raph@sewers.com",
password: "pizzapizza", password_confirmation: "pizzapizza"

week1 = Project.create title: "Concert Schedule", description: "Band list", assigned: "2014-06-12",
due: "2014-06-16"

week2 = Project.create title: "Blackjack", description: "A card game", assigned: "2014-06-19",
due: "2014-06-23"

week3 = Project.create title: "TDD App", description: "Test Driven Dev",
assigned: "2014-06-26", due: "2014-06-30"

week4 = Project.create title: "Rails App", description: "Homework Tracker",
assigned: "2014-07-03", due: "2014-07-08"

[week1, week2, week3, week4].each do |project|
  User.all.each do |user|
    FinishedProject.create user: user, project: project
  end
end
