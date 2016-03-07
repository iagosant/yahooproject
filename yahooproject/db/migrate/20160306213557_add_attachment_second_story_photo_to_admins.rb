class AddAttachmentSecondStoryPhotoToAdmins < ActiveRecord::Migration
  def self.up
    change_table :admins do |t|
      t.attachment :second_story_photo
    end
  end

  def self.down
    remove_attachment :admins, :second_story_photo
  end
end
