class Breeder < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

	geocoded_by :location
	after_validation :geocode, :if => :location_changed?
end
