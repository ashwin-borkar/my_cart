class Product < ApplicationRecord
	belongs_to :category
	has_one_attached :image
	validates :name, :uniqueness => true
	validates :price, :presence => true, :format => { :with => /\A(\$)?(\d+)(\.|,)?\d{0,2}?\z/ }
	validates :category, presence: true
end
