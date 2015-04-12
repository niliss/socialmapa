class Institution < ActiveRecord::Base
	has_many :events
	# has_many :locations, as: :locatable
	enum categories: [:educacion, :medio_ambiente, :animales, :social, :turismo, :agricultura, :otros]
end
