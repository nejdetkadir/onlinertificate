class Blog < ApplicationRecord
  belongs_to :blog_category

  validates :title, presence: true
  validates :body, presence: true
  validates :blog_category_id, presence: true
end
