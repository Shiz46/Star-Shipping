class Quote < ApplicationRecord
    mount_uploader :image, ImageUploader

    belongs_to :user
    has_many   :images
end
