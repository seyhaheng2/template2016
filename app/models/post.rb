class Post < ActiveRecord::Base
	extend FriendlyId

	friendly_id :name, use: [:slugged, :history]

  belongs_to :user
  belongs_to :subcategory
  belongs_to :category

	def should_generate_new_friendly_id?
		name_changed?
	end

	has_attached_file :image, styles: { small: "64x64", med: "492", large: "200x200" }
	# validates_attachment :image
  # :content_type => { :content_type => "image/jpg" }
  # :size => { :in => 0..100.kilobytes }
	# has_attached_file :image
  # Validate content type
  validates_attachment_content_type :image, content_type: /\Aimage/
  # Validate filename
  # validates_attachment_file_name :image, matches: [/png\Z/, /jpe?g\Z/]
  # Explicitly do not validate
  # do_not_validate_attachment_file_type :image



end
