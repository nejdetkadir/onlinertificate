class Corporate < ApplicationRecord

  validates :title, presence: true, length: {minimum: 3}
  validates :body, presence: true, length: {minimum: 10}
end
