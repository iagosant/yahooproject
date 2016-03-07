class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.text :blurb
      t.string :source
      t.datetime :when

      t.timestamps null: false
    end
  end
end
