class Institution < ActiveRecord::Base
	enum categories: [:educacion, :medio_ambiente, :animales, :social, :turismo, :agricultura, :otros]
	# we still need to add the URL if someone does not add this
  	has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/


end
