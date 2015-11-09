ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
  next if table == 'schema_migrations'

  # MySQL and PostgreSQL
  ActiveRecord::Base.connection.execute("TRUNCATE #{table}")

  # SQLite
  # ActiveRecord::Base.connection.execute("DELETE FROM #{table}")
end

Admin.create!([
  {email: "hello@jcfausto.com", encrypted_password: "$2a$10$Za7G1GU9VVxs8hCp0ocfQeo6FIXQXKI.DlKkQLfsQd26HkV6tjR3O", sign_in_count: 7, current_sign_in_at: "2015-11-08 17:08:00", last_sign_in_at: "2015-11-08 13:05:34", current_sign_in_ip: "::1", last_sign_in_ip: "::1", failed_attempts: 0, unlock_token: nil, locked_at: nil},
])
About.create!([
  {title: "WHO I AM", description: "I’m an a software engineer & team builder from Brazil, passionate about code, design, startups, technology and developing people, including myself. I like science, travelling, sports and films.", order: 0},
  {title: "WHAT I DO", description: "I lead and coach software development teams, I create desktop softwares, I create web applications, I craft iOS applications and I play with Photoshop learning to design great UIs.", order: 1},
  {title: "FREE TIME", description: "In my free time I run, read, hangout with family, attend conferences or hackathons and think about how can I be a better human being.", order: 3},
  {title: "WORK", description: "I work for a company called <a href=\"http://www.softplan.com.br/ target=\"_blank\">Softplan</a>, where I coordinate teams and I coach people on agile/lean methodologies and culture.", order: 2},
  {title: "EARLY LIFE", description: "Read more about my endevours on my old blog, <a href=\"http://ludworks.com/easypress/blog\" target=\"_blank\">right here.</a>", order: 4}
])
Achievement.create!([
  {when: "2015-11-02 00:00:00", what: "Lauched this website built with Rails <a href=\"jcfausto.com\" target=\"_blank\">jcfausto.com</a>"},
  {when: "2015-09-20 00:00:00", what: "Scored 7.0 at IELTs"},
  {when: "2015-07-01 00:00:00", what: "Launched an iPhone app for book readers called <a href=\"http://manypagesapp.com/\" target=\"_blank\">ManyPagesApp</a>"},
  {when: "2015-02-02 00:00:00", what: "Certified as <a href=\"https://www.scaledagileframework.com/\" target=\"_blank\">SAFe Agilist (SA)</a>"}
])
HeroPhrase.create!([
  {text: "RAILS DEVELOPER"},
  {text: "iOS DEVELOPER"},
  {text: "WINDOWS USER"},
  {text: "MAC USER"},
  {text: "LINUX USER"},
  {text: "TECHNOLOGY ENTHUSIAST"},
  {text: "GROWTH HACKER"},
  {text: "PROBLEM SOLVER"},
  {text: "YOUNG & CREATIVE"},
  {text: "FRONTEND-ER"},
  {text: "BACKEND-ER"},
  {text: "WORDPRESS DEVELOPER"},
  {text: "OCCASIONAL PHOTOSHOP DESIGNER"}
])
Project.create!([
  {image_file_name: "project_missing_thumb.jpg", image_content_type: "image/jpeg", image_file_size: 32965, image_updated_at: "2015-11-08 13:20:00", name: "jcfausto.com", url: "http://jcfausto.com", order: 1, visible: true},
  {image_file_name: "project-easypress-wp-theme.jpg", image_content_type: "image/jpeg", image_file_size: 26291, image_updated_at: "2015-11-09 20:57:46", name: "Easypress - Wordpress Theme", url: "http://ludworks.com/easypress", order: 3, visible: true},
  {image_file_name: "project-manypagesapp-iphone-app.jpg", image_content_type: "image/jpeg", image_file_size: 20013, image_updated_at: "2015-11-09 21:03:57", name: "ManyPages iPhone App", url: "http://manypagesapp.com", order: 2, visible: true}
])
Skill.create!([
  {title: "WEB", description: "HTML, CSS, SASS, jQuery, React, HTML, Wordpress", order: 1},
  {title: "BACKEND", description: "Ruby, Java, Rails, Python", order: 2},
  {title: "MOBILE & DESKTOP", description: "iOS, Android, Delphi", order: 3},
  {title: "DESIGN", description: "Adobe Photoshop CC", order: 4},
  {title: "OTHERS", description: "Vagrant, Relational Databases, Testing, Agile Development at Scale, Team Building, Project Management, Gulp, Bower", order: 5},
  {title: "STILL LEARNING", description: "iOS/Mac Dev, UX/UI Design, Full-Stack Web Development", order: 6},
  {title: "WHAT I USE", description: "MacVim, SublimeText3, Android Studio, iTerm 2 with Zsh, Photoshop CC 2015, OS X, Windows", order: 7}
])
