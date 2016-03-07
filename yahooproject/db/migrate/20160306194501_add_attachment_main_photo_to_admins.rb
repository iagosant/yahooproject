class AddAttachmentMainPhotoToAdmins < ActiveRecord::Migration
  def self.up
    change_table :admins do |t|
      t.attachment :main_photo
    end
  end

  def self.down
    remove_attachment :admins, :main_photo
  end
end
