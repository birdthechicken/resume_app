json.id student.id
json.first_name student.first_name
json.last_name student.last_name
json.email student.email
json.phone_number student.phone_number
json.short_bio student.short_bio
json.linked_in_url student.linked_in_url
json.twitter_handle student.twitter_handle
json.personal_blog student.personal_blog
json.website_url student.website_url
json.resume_url student.resume_url
json.github_url student.github_url
json.photo student.photo

json.skills do 
  json.array! student.skills, partial: 'api/skills/skill', as: :skill
end

json.experiences do 
  json.array! student.experiences, partial: 'api/experiences/experience', as: :experience
end

json.educations do 
  json.array! student.educations, partial: 'api/educations/education', as: :education
end

json.capstones do 
  json.array! student.capstones, partial: 'api/capstones/capstone', as: :capstone
end

