class Participant < ApplicationRecord
  belongs_to :event

  mount_uploader :certificate, ImageUploader

  validates :fullname, presence: :true
  validates :email, presence: :true
  validates :phone, presence: :true
  validates :code, presence: :true, uniqueness: { case_sensitive: true }
  validates :certificate, presence: :true
end
