class Know < ApplicationRecord
    mount_uploader :image, ImageUploader
    scope :search_names_or, lambda { |search_word| where("title like ? or company like ? or body like ?", "%#{search_word}%", "%#{search_word}%", "%#{search_word}%") }
end
