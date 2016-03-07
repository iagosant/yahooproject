class AddSecondFeaturedStoryColumnSynopsisToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :second_featured_story_synopsis, :text
  end
end
