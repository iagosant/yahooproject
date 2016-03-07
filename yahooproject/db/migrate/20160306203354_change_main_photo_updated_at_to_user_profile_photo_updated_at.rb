class ChangeMainPhotoUpdatedAtToUserProfilePhotoUpdatedAt < ActiveRecord::Migration
  def change
    rename_column :users, :main_photo_updated_at, :user_profile_photo_updated_at
  end
end
