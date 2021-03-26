class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.references :blog_category, null: false, foreign_key: true
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
