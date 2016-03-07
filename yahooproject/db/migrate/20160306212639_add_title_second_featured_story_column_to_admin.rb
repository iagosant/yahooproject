class AddTitleSecondFeaturedStoryColumnToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :second_featured_story, :string
  end
end
