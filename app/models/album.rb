class Album < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_many :photos, :inverse_of => :album, :dependent => :destroy

  accepts_nested_attributes_for :photos, allow_destroy: true
end
