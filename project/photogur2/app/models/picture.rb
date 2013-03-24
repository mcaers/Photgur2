class Picture < ActiveRecord::Base

	attr_accessible :title, :artist, :url, :copyrighted

	validates :title, :presence => true
	validates :url, {
		:format => {
		:with => /^https?:/, :message => "Please enter a valid url."
		}
	}

	scope :free, where(:copyrighted => false)

end
	
