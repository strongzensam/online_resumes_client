# json.first_name     student.first_name
# json.last_name      student.last_name
# json.email          student.email
# json.phone          student.phone
# json.bio            student.short_bio
# json.linked_in      student.linkedin_url
# json.twitter        student.twitter_url
# json.blog           student.blog_url
# json.online_resume  student.online_resume
# json.github         student.github_url
# json.photo          student.photo_url
# json.experience     student.experiences do |experience|
#   json.start_date     experience.start_date
#   json.end_date       experience.end_date
#   json.title          experience.title
#   json.company        experience.company
#   json.details        experience.details
# end
# json.education      student.education do |education|
#   json.start_date     education.start_date
#   json.end_date       education.end_date
#   json.degree         education.degree
#   json.school         education.school
#   json.details        education.details
# end
# json.skills         student.skills.pluck(name)
# json.capstone       student do |capstone|
#   json.name           capstone.cap_name
#   json.description    capstone.cap_desc
#   json.url            capstone.cap_url
#   json.screen_shot    capstone.cap_ss
# end


class OnlineResume
  attr_accessor :id, :first_name, :last_name, :email, :phone, :bio, :linked_in, :twitter, :blog, :online_resume, :github, :photo, :skills

  def initialize(hash)
    @id = hash["id"]
    @first_name = hash["first_name"]
    @last_name = hash["last_name"]
    @email = hash["email"]
    @phone_number = hash["phone"]
    @short_bio = hash["bio"]
    @linkedin_url = hash["linked_in"]
    @twitter_handle = hash["twitter"]
    @personal_blog = hash["blog"]
    @online_resume_url = hash["online_resume"]
    @githzxub_url = hash["github"]
    @photo = hash["photo"]
    @skills = hash["skills"]
  end 

  def self.find(id)
    resume_hash = Unirest.get("http://localhost:3000/students/#{id}.json").body
    OnlineResume.new(resume_hash)
  end

  def self.all
    resumes = []
    resume_hashes = Unirest.get("http://localhost:3000/students.json")
    resume_hashes.each do |hash|
      resumes << OnlineResume.new(hash)
    end
    return resumes
  end

  # def self.create(attributes)
  #   resume_hash = Unirest.post("http://localhost:3000/resumes.json", headers:{"Accept"=>"application/json"}, parameters: attributes).body
  #   resume = Resume.new(resume_hash)
  # end

  # def update(attributes)
  #   resume_hash = Unirest.patch("http://localhost:3000/resumes/#{id}.json", headers:{"Accept"=>"application/json"}, parameters:attributes).body
  #   Resume.new(resume_hash)
  # end

  # def destroy
  #   Unirest.delete("http://localhost:3000/resumes.json").body
  # end

# end








end