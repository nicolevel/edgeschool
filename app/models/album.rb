class Album < ApplicationRecord
  mount_uploader :photo, PhotoUploader
end
