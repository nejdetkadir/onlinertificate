class Faq < ApplicationRecord
  validates :ask, presence: true, length: {minimum: 3}
  validates :answer, presence: true, length: {minimum: 5}
end
