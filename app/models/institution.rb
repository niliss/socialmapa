class Institution < ActiveRecord::Base
	has_many :events
	enum categories: [:educacion, :medio_ambiente, :animales, :social, :turismo, :agricultura, :otros]
end
