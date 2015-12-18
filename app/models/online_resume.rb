class OnlineResume
  attr_accessor :first_name, :last_name, :email, :phone_number, :id, :short_bio, :linkedin_url, :twitter_handle, :personal_blog, :online_resume_url, :github_url, :photo

  def initialize(hash)
    @first_name = hash["first_name"]
    @last_name = hash["last_name"]
    @email = hash["email"]
    @phone_number = hash["phone_number"]
    @short_bio = hash["short_bio"]
    @linkedin_url = hash["linkedin_url"]
    @twitter_handle = hash["twitter_handle"]
    @personal_blog = hash["personal_blog"]
    @online_resume_url = hash["online_resume_url"]
    @github_url = hash["github_url"]
    @photo = hash["photo"]
  end 









end