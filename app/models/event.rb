class Event < ApplicationRecord
  has_many :participants
  
  mount_uploader :cover, ImageUploader
  mount_uploader :certificate_scaffold, CertificateScaffoldUploader

  validates :name, presence: true, length: {minimum: 3}
  validates :description, presence: true, length: {minimum: 10}
  validates :cover, presence: :true
  validates :certificate_scaffold, presence: :true
  validates :event_date, presence: :true
  validates :url, presence: :true
end
