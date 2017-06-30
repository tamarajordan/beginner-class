# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


  # enum genre: { entertainment: 0, music: 1, sports: 2, writing: 3, business: 4, arts: 5, other: 6 }
  # enum status: { hidden: 0, pre_enroll: 1, active: 2, archived: 3 }

course_hash = [{
  instructor: "Christina Aguilera",
  name: "Teaches Singing",
  price: 9000,
  genre: 1,
  status: 2,
  promo_photo: "https://d3e9iqx18mbphw.cloudfront.net/images/563/original/1489515038-CA_CM_Hero_V1_A.jpg?1489515038"
},
{
  instructor: "Herbie Hancock",
  name: "Teaches Jazz",
  price: 9000,
  genre: 1,
  status: 1,
  promo_photo: "https://d3e9iqx18mbphw.cloudfront.net/images/699/original/1497481889-HH_ClassTile_V2_A.jpg?1497481889"
},
{
  instructor: "Steve Martin",
  name: "teaches comedy",
  price: 9000,
  genre: 0,
  status: 2,
  promo_photo: "https://d3e9iqx18mbphw.cloudfront.net/images/529/original/1488418902-SM_ClassTile_V2_A.jpg?1488418902"
}]

lessons_hash = [{
  # course_id: 1,
  name: "Introduction",
  number: 1,
  description: "Meet Christina—your new vocal coach. Begin your training as Christina asks you to throw away your rule book and shares what she has planned for your class."
},
{
  # course_id: 1,
  name: "Christina's Inspiration",
  number: 2,
  description: "Christina learned the secrets of powerful performances from music legends like Billie Holiday and Nina Simone. Learn how to gather inspiration, tap into your emotions and embrace your flaws to better connect with your audience."
},
{
  # course_id: 1,
  name: "Warming Up",
  number: 3,
  description: "Your vocal cords are like any other muscle—you must stretch and warm them up before a performance. Let Christina walk you through the vocal warmups and exercises she uses to get ready for the show."
},
{
  # course_id: 1,
  name: "Protecting Your Voice",
  number: 4,
  description: "Your voice is an instrument. Learn to protect it as Christina talks about the top three things to avoid, adjusting to different environments, and cures to heal a strained voice."
},
{
  # course_id: 1,
  name: "Range",
  number: 5,
  description: "Expand your vocal range with Christina. Learn her secrets for nailing those high notes and building your range. Use the Range Finder tool at the end of the lesson to put into practice what you've learned."
}]

recommendations_hash = [{
  course_id: 1,
  name: "Hattie Hairston",
  description: "is a singer from Mobile. She is a student in Christina Aguilera's MasterClass.",
  photo: "https://d3e9iqx18mbphw.cloudfront.net/course_reviews/3039/original/1490317433-Hattie.jpg?1490317433",
  content: "The class is very informative, helpful, fun, and is a great experience. I learned alot and happy to apply the exercises and lessons to my voice.",
},
{
  course_id: 1,
  name: "Diane Anderson-Minshall",
  description: "wrote for The Advocate"
  photo: "https://d3e9iqx18mbphw.cloudfront.net/course_reviews/3019/original/1464041462-logo-advocate.png?1464041462"
  content: "Gorgeously filmed classes, making the overall student experience intimate and meaningful."
},
{
  course_id: 3,
  name: "Hattie Hairston",
  description: "is a singer from Mobile. She is a student in Christina Aguilera's MasterClass.",
  photo: "https://d3e9iqx18mbphw.cloudfront.net/course_reviews/3039/original/1490317433-Hattie.jpg?1490317433",
  content: "The class is very informative, helpful, fun, and is a great experience. I learned alot and happy to apply the exercises and lessons to my voice.",
},
{
  course_id: 3,
  name: "Diane Anderson-Minshall",
  description: "wrote for The Advocate"
  photo: "https://d3e9iqx18mbphw.cloudfront.net/course_reviews/3019/original/1464041462-logo-advocate.png?1464041462"
  content: "Gorgeously filmed classes, making the overall student experience intimate and meaningful."
}]

marketing_hash = {
  course_id: 1,
  intro_icon_1: "https://d3e9iqx18mbphw.cloudfront.net/images/241/original/1456197545-icons-stats-CA-2-PO.svg?1456197545",
  intro_title_1: "23 LESSONS",
  intro_content_1: "Christina teaches you her unique vocal techniques in over 3.5 hours of voice lessons and exercises.",
  intro_icon_2: "https://d3e9iqx18mbphw.cloudfront.net/images/240/original/1456197545-icons-stats-CA-1-PO.svg?1456197545",
  intro_title_2: "100% EXCLUSIVE",
  intro_content_2: "For the first time ever, get online voice lessons from the six-time Grammy award winner. Only available from MasterClass.",
  description_title: "Your New Voice Teacher",
  description_photo: "https://d3e9iqx18mbphw.cloudfront.net/images/236/original/1492119763-CA_ClassPortrait_Final.jpg?1492119763",
  description_content: "Christina teaches you how to expand your range, find your voice, and master the techniques that have earned her six Grammy Awards. You'll learn warm-up exercises, breath control, vibrato, her signature growls, and hear Christina break down her biggest hits. There has never been a singing class like this before.",
  background_photo_1: "https://d3e9iqx18mbphw.cloudfront.net/images/237/original/1460066722-PR-CA-class_skills-students-PO.jpg?1460066722",
  feature_title_1: "23 LESSONS",
  feature_content_1: "Across 23 lessons and exercises, learn everything from Christina's vocal warm-up exercises to the techniques she uses in studio and on stage.",
  feature_title_2: "RANGE FINDER TOOL",
  feature_content_2: "Sing into our app to find your vocal range. Track how you are building range as you progress through the class and exercise your voice.",
  feature_title_3: "47-PAGE WORKBOOK",
  feature_content_3: "A 47-page downloadable workbook accompanies the class with lesson recaps and takeaways to put into practice what you've learned.",
  background_photo_2: "https://d3e9iqx18mbphw.cloudfront.net/images/243/original/1461099292-PR-ca-reviews-v3.jpg?1461099292"
}

Course.create!(course_hash)
 
Course.each do |c|
  c.lessons.create!(lessons_hash)
end

Course.each do |c|
  c.recommendations.create!(recommendations_hash)
end

Course.each do |c|
  c.marketing_content.create!(marketing_hash)
end

# {
#   #LESSONS FOR STEVE MARTIN COURSE
#   course_id: 3,
#   name: "Introduction",
#   number: 1,
#   description: "Meet Christina—your new vocal coach. Begin your training as Christina asks you to throw away your rule book and shares what she has planned for your class."
# },
# {
#   course_id: 3,
#   name: "Christina's Inspiration",
#   number: 2,
#   description: "Christina learned the secrets of powerful performances from music legends like Billie Holiday and Nina Simone. Learn how to gather inspiration, tap into your emotions and embrace your flaws to better connect with your audience."
# },
# {
#   course_id: 3,
#   name: "Warming Up",
#   number: 3,
#   description: "Your vocal cords are like any other muscle—you must stretch and warm them up before a performance. Let Christina walk you through the vocal warmups and exercises she uses to get ready for the show."
# },
# {
#   course_id: 3,
#   name: "Protecting Your Voice",
#   number: 4,
#   description: "Your voice is an instrument. Learn to protect it as Christina talks about the top three things to avoid, adjusting to different environments, and cures to heal a strained voice."
# },
# {
#   course_id: 3,
#   name: "Range",
#   number: 5,
#   description: "Expand your vocal range with Christina. Learn her secrets for nailing those high notes and building your range. Use the Range Finder tool at the end of the lesson to put into practice what you've learned."
# }

# ])


# MarketingContent.create!([{
#   course_id: 1,
#   intro_icon_1: "https://d3e9iqx18mbphw.cloudfront.net/images/241/original/1456197545-icons-stats-CA-2-PO.svg?1456197545",
#   intro_title_1: "23 LESSONS",
#   intro_content_1: "Christina teaches you her unique vocal techniques in over 3.5 hours of voice lessons and exercises.",
#   intro_icon_2: "https://d3e9iqx18mbphw.cloudfront.net/images/240/original/1456197545-icons-stats-CA-1-PO.svg?1456197545",
#   intro_title_2: "100% EXCLUSIVE",
#   intro_content_2: "For the first time ever, get online voice lessons from the six-time Grammy award winner. Only available from MasterClass.",
#   description_title: "Your New Voice Teacher",
#   description_photo: "https://d3e9iqx18mbphw.cloudfront.net/images/236/original/1492119763-CA_ClassPortrait_Final.jpg?1492119763",
#   description_content: "Christina teaches you how to expand your range, find your voice, and master the techniques that have earned her six Grammy Awards. You'll learn warm-up exercises, breath control, vibrato, her signature growls, and hear Christina break down her biggest hits. There has never been a singing class like this before.",
#   background_photo_1: "https://d3e9iqx18mbphw.cloudfront.net/images/237/original/1460066722-PR-CA-class_skills-students-PO.jpg?1460066722",
#   feature_title_1: "23 LESSONS",
#   feature_content_1: "Across 23 lessons and exercises, learn everything from Christina's vocal warm-up exercises to the techniques she uses in studio and on stage.",
#   feature_title_2: "RANGE FINDER TOOL",
#   feature_content_2: "Sing into our app to find your vocal range. Track how you are building range as you progress through the class and exercise your voice.",
#   feature_title_3: "47-PAGE WORKBOOK",
#   feature_content_3: "A 47-page downloadable workbook accompanies the class with lesson recaps and takeaways to put into practice what you've learned.",
#   background_photo_2: "https://d3e9iqx18mbphw.cloudfront.net/images/243/original/1461099292-PR-ca-reviews-v3.jpg?1461099292"
# },
# {
#   course_id: 2,
#   intro_icon_1: "https://d3e9iqx18mbphw.cloudfront.net/images/241/original/1456197545-icons-stats-CA-2-PO.svg?1456197545",
#   intro_title_1: "23 LESSONS",
#   intro_content_1: "Christina teaches you her unique vocal techniques in over 3.5 hours of voice lessons and exercises.",
#   intro_icon_2: "https://d3e9iqx18mbphw.cloudfront.net/images/240/original/1456197545-icons-stats-CA-1-PO.svg?1456197545",
#   intro_title_2: "100% EXCLUSIVE",
#   intro_content_2: "For the first time ever, get online voice lessons from the six-time Grammy award winner. Only available from MasterClass.",
#   description_title: "Your New Voice Teacher",
#   description_photo: "https://d3e9iqx18mbphw.cloudfront.net/images/236/original/1492119763-CA_ClassPortrait_Final.jpg?1492119763",
#   description_content: "Christina teaches you how to expand your range, find your voice, and master the techniques that have earned her six Grammy Awards. You'll learn warm-up exercises, breath control, vibrato, her signature growls, and hear Christina break down her biggest hits. There has never been a singing class like this before.",
#   background_photo_1: "https://d3e9iqx18mbphw.cloudfront.net/images/237/original/1460066722-PR-CA-class_skills-students-PO.jpg?1460066722",
#   feature_title_1: "23 LESSONS",
#   feature_content_1: "Across 23 lessons and exercises, learn everything from Christina's vocal warm-up exercises to the techniques she uses in studio and on stage.",
#   feature_title_2: "RANGE FINDER TOOL",
#   feature_content_2: "Sing into our app to find your vocal range. Track how you are building range as you progress through the class and exercise your voice.",
#   feature_title_3: "47-PAGE WORKBOOK",
#   feature_content_3: "A 47-page downloadable workbook accompanies the class with lesson recaps and takeaways to put into practice what you've learned.",
#   background_photo_2: "https://d3e9iqx18mbphw.cloudfront.net/images/243/original/1461099292-PR-ca-reviews-v3.jpg?1461099292"
# },
# {
#   course_id: 3,
#   intro_icon_1: "https://d3e9iqx18mbphw.cloudfront.net/images/241/original/1456197545-icons-stats-CA-2-PO.svg?1456197545",
#   intro_title_1: "23 LESSONS",
#   intro_content_1: "Christina teaches you her unique vocal techniques in over 3.5 hours of voice lessons and exercises.",
#   intro_icon_2: "https://d3e9iqx18mbphw.cloudfront.net/images/240/original/1456197545-icons-stats-CA-1-PO.svg?1456197545",
#   intro_title_2: "100% EXCLUSIVE",
#   intro_content_2: "For the first time ever, get online voice lessons from the six-time Grammy award winner. Only available from MasterClass.",
#   description_title: "Your New Voice Teacher",
#   description_photo: "https://d3e9iqx18mbphw.cloudfront.net/images/236/original/1492119763-CA_ClassPortrait_Final.jpg?1492119763",
#   description_content: "Christina teaches you how to expand your range, find your voice, and master the techniques that have earned her six Grammy Awards. You'll learn warm-up exercises, breath control, vibrato, her signature growls, and hear Christina break down her biggest hits. There has never been a singing class like this before.",
#   background_photo_1: "https://d3e9iqx18mbphw.cloudfront.net/images/237/original/1460066722-PR-CA-class_skills-students-PO.jpg?1460066722",
#   feature_title_1: "23 LESSONS",
#   feature_content_1: "Across 23 lessons and exercises, learn everything from Christina's vocal warm-up exercises to the techniques she uses in studio and on stage.",
#   feature_title_2: "RANGE FINDER TOOL",
#   feature_content_2: "Sing into our app to find your vocal range. Track how you are building range as you progress through the class and exercise your voice.",
#   feature_title_3: "47-PAGE WORKBOOK",
#   feature_content_3: "A 47-page downloadable workbook accompanies the class with lesson recaps and takeaways to put into practice what you've learned.",
#   background_photo_2: "https://d3e9iqx18mbphw.cloudfront.net/images/243/original/1461099292-PR-ca-reviews-v3.jpg?1461099292"
# }])
 
# p "Created #{Cat.count} cats"