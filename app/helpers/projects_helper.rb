module ProjectsHelper
  def thumbnail_exist?(id)
	File.exist?("#{Rails.root}/app/assets/images/projects/#{id}/thumb.jpg")
  end
    
end
