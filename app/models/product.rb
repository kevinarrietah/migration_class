class Product < ApplicationRecord
  belongs_to :created_by, class_name: 'User'

  has_many :product_stores
  has_many :stores, through: :product_stores
end
