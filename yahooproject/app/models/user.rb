class User < ActiveRecord::Base
  has_attached_file :user_profile_photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :user_profile_photo, content_type: /\Aimage\/.*\Z/
end
