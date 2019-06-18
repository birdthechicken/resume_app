# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# student_1 = Student.create(first_name: "Alexandria", last_name: "Erb")
# student_2 = Student.create(first_name: "Sinan", last_name: "Gundogar")

# student_3 = Student.create(first_name: "Abraham", last_name: "Kim")
# student_4 = Student.create(first_name: "Jeff", last_name: "Brinker")

# student_5 = Student.create(first_name: "Sabrina", last_name: "DiMichele")
# student_6 = Student.create(first_name: "Chris", last_name: "Bowen")





test_student_10 = Student.create(first_name: "John", last_name: "Moose", email: "test@dot.com", phone_number: "773-555-5555", short_bio: "too short", linkedIn_url: "www.linkedin.com/johnmoose", twitter_handle: "twitter/johnmoose", personal_blog: "it is personal", website_url: "www.johnmoose.com", resume_url: "resume.com", github_url: "github/something", photo: "https://images.unsplash.com/photo-1516934024742-b461fba47600?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80")

test_skill = Skill.create(student_id: test_student_10.id, skill_name: "so skill")
test_skill = Skill.create(student_id: test_student_10.id, skill_name: "karate")
test_skill = Skill.create(student_id: test_student_10.id, skill_name: "coding")

test_experience = Experience.create(student_id: test_student_10.id, start_date: "1989-10-10", end_date: "2005-10-10", job_title: "office boy", company_name: "Apple", details: "no details yet")
test_experience = Experience.create(student_id: test_student_10.id, start_date: "1099-10-10", end_date: "2001-10-10", job_title: "owner", company_name: "Actualize", details: "no details yet")
test_experience = Experience.create(student_id: test_student_10.id, start_date: "2009-10-10", end_date: "2005-10-10", job_title: "battery charger", company_name: "AAA", details: "no details yet")

test_education = Education.create(student_id: test_student_10.id, start_date: "2001-05-05", end_date: "2005-05-05", degree: "bachelor", schooling: "Actualize", details: "no details")

test_capstone = Capstone.create(student_id: test_student_10.id, name: "Capstone name", description: "blablalba", url: "capstone.com", screenshot: "https://images.unsplash.com/photo-1516934024742-b461fba47600?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80")
