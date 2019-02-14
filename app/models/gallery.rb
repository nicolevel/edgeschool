class Gallery < ApplicationRecord
   mount_uploader :photo, PhotoUploader
end
