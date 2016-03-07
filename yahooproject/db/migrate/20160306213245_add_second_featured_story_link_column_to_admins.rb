class AddSecondFeaturedStoryLinkColumnToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :second_featured_story_link, :string
  end
end
