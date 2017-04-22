class CreateArticles < ActiveRecord::Migration[5.0]
  def up
    create_table :articles do |t|
      t.string "summary"
      t.string "description"
      t.string "solved"
      t.string "notes"
      t.timestamps
    end
  #  add_index("articles", "article")
  end

  def down
    drop_table :articles
  end
end
