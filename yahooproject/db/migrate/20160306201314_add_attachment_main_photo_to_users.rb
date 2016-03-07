class AddAttachmentMainPhotoToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :main_photo
    end
  end

  def self.down
    remove_attachment :users, :main_photo
  end
end
