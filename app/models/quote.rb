class Quote < ApplicationRecord
    mount_uploader :image, ImageUploader

    belongs_to :user_id
    has_many   :images
end
