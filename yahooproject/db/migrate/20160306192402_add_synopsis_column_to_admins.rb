class AddSynopsisColumnToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :synopsis, :text
  end
end
