class Photo < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  #photo belongs to album
  belongs_to :album
  #validations
  validates :album, presence: true
  # Photo uploader using carrierwave
  def to_jq_upload
    {
      "url" => photo.medium.url,
      "delete_url" => id,
      "picture_id" => id,
      "delete_type" => "DELETE"
    }.to_json
  end
end
