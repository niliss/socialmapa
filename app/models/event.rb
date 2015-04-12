class Event < ActiveRecord::Base
	has_many :volunteers, dependent: :destroy
	belongs_to :institution
	# has_many :locations, as: :locatable
	# accepts_nested_attributes_for :locations, allow_destroy: true

	validates :name, presence: true, length: { minimum: 3 }
	validates :description, presence: true, length: { minimum: 3 }
	validates :initial_date, presence: true
	validates :end_date, presence:true
end
