class CreateSubChapters < ActiveRecord::Migration
  def change
    create_table :sub_chapters do |t|
      t.integer :index
      t.string :name
      t.text :data
      t.integer :chapter_id

      t.timestamps
    end
  end
end
