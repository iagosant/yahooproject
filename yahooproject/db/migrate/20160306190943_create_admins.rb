class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :source_name
      t.string :title
      t.string :link

      t.timestamps null: false
    end
  end
end
