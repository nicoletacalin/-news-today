class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :thumbnail
  has_one_attached :banner
  # Action Text from Rails 6
  has_rich_text :body

  attr_accessor :country

  validates :title, length: { minimum: 5 }
  validates :body,  length: { minimum: 25 }


  self.per_page = 3
  extend FriendlyId
  friendly_id :title, use: :slugged

  def optimized_image(image,x,y)
    return image.variant(resize_to_fill: [x, y])
  end

end
