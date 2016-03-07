class ChangeUserProfilePictureFileNameToUserProfilePhotoFileNameInUsers < ActiveRecord::Migration
  def change
    rename_column :users, :user_profile_picture_file_name, :user_profile_photo_file_name
  end
end
