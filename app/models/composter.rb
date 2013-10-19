class Composter < ActiveRecord::Base
	attr_accessor :title
	belongs_to :user
	
	geocoded_by :address
	reverse_geocoded_by :latitude, :longitude
	after_validation :geocode, :reverse_geocode

	acts_as_gmappable :process_geocoding => false, :address => "address"
	  def gmaps4rails_infowindow
      # add here whatever html content you desire, it will be displayed when users clicks on the marker
      "
      <div>
      	#{self.address}
      </div>
      <div>
      	<a href = 'mailto:#{User.find(user_id).email}'>Email  #{User.find(user_id).name}</a>
      </div>
      
      "
    end
end
