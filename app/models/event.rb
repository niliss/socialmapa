class Event < ActiveRecord::Base
	has_many :volunteers, dependent: :destroy

	validates :name, presence: true, length: { minimum: 3 }
	validates :description, presence: true, length: { minimum: 3 }
	validates :initial_date, presence: true
	validates :end_date, presence:true
end
