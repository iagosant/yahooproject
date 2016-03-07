class ChangeColumnNameInAdmins < ActiveRecord::Migration
  def change
    rename_column :admins, :second_featured_story, :second_featured_story_title
  end
end
