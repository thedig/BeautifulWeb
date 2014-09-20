class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.string :content
      t.datetime :date_published
      t.string :description
      t.string :story_id

      t.timestamps
    end
  end
end
