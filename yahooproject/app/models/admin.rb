class Admin < ActiveRecord::Base
  has_attached_file :main_photo, styles: { large: "2200x510>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :main_photo, content_type: /\Aimage\/.*\Z/
  has_attached_file :second_story_photo, styles: { large: "2200x510>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :second_story_photo, content_type: /\Aimage\/.*\Z/
end
