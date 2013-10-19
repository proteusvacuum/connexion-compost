class Composter < ActiveRecord::Base
	attr_accessor :title
	belongs_to :user
	
	geocoded_by :address
	reverse_geocoded_by :latitude, :longitude
	after_validation :geocode, :reverse_geocode

	acts_as_gmappable :process_geocoding => false, :address => "address"
	



end
