class ChangeMainPhotoFileSizeToUserProfilePhotoFileSize < ActiveRecord::Migration
  def change
    rename_column :users, :main_photo_file_size, :user_profile_photo_file_size
  end
end
