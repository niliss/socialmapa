class Institution < ActiveRecord::Base
	enum categories: [:educacion, :medio_ambiente, :animales, :social, :turismo, :agricultura, :otros]
end
