class Product < ActiveRecord::Base
  # this attr_accessible seems new
  attr_accessible :description, :image_url, :price, :title
  validates :title, :description, :image_url, presence: true
  # using 0.01 because database stores 0.001 as zero any
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
	with: %r{\.(gif|jpg|png)$}i,
	message: 'must be a URL for GIF, JPG or PNG image.'
  }
end
