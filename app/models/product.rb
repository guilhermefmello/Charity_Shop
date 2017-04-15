class Product < ActiveRecord::Base


	def self.search(search)
     where("title LIKE ?", "%#{search}%")
     end

validates :title, presence:true, length: {minimum: 4, maximum: 50}
validates :description, presence: true, length: {minimum:10, maximim:300}
validates :image_url, presence: true
validates :price, presence: true
validates :category, presence: true
validates :subcategory, presence: true


end
