# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

phrases = [
   'RAILS DEVELOPER',
   'iOS DEVELOPER',
   'WINDOWS USER',
   'MAC USER',
   'LINUX USER',
   'TECHNOLOGY ENTHUSIAST',
   'GROWTH HACKER',
   'PROBLEM SOLVER',
   'YOUNG & CREATIVE',
   'FRONTEND-ER',
   'BACKEND-ER',
   'WORDPRESS DEVELOPER',
   'OCCASIONAL PHOTOSHOP DESIGNER'
]

phrases.each do |phrase|
  HeroPhrase.create(text: phrase)
end

skills = [
  ['WEB','HTML, CSS, SASS, jQuery, React, HTML, Wordpress', 1],
  ['BACKEND','Ruby, Java, Rails, Python', 2],
  ['MOBILE & DESKTOP','iOS, Android, Delphi', 3],
  ['DESIGN','Adobe Photoshop CC', 4],
  ['OTHERS','Vagrant, Relational Databases, Testing, Agile Development at Scale, Team Building, Project Management, Gulp, Bower', 5],
  ['STILL LEARNING','iOS/Mac Dev, UX/UI Design, Full-Stack Web Development', 6],
  ['WHAT I USE','MacVim, SublimeText3, Android Studio, iTerm 2 with Zsh, Photoshop CC 2015, OS X, Windows', 7]
]

skills.each do |title, description, order|
  Skill.create(title: title, description: description, order: order)
end
