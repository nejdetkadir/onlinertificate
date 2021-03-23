class Event < ApplicationRecord
  mount_uploader :cover, ImageUploader
end
