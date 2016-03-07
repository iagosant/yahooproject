class ChangeMainPhotoContentTypeToUserProfilePictureContentType < ActiveRecord::Migration
  def change
    rename_column :users, :main_photo_content_type, :user_profile_photo_content_type
  end
end
