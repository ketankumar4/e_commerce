class ProductCategory < ApplicationRecord
  belongs_to :seller, optional: true
  has_many :products
end
