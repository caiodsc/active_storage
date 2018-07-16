class Post < ApplicationRecord
  has_one_attached :image
  include Rails.application.routes.url_helpers
  def image_url
    rails_blob_path(self.image)#, disposition: "attachment", only_path: true)
  end
end
