class Location < ActiveRecord::Base
	belongs_to :locatable, polymorphic: true
	# esto no se sí se necesita con la parte de arriba
	#belongs_to :location
end
