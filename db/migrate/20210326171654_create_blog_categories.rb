class CreateBlogCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :blog_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
