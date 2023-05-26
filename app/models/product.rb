class Product < ApplicationRecord

  #mount_uploader :attachment, AttachmentUploader  
  validates :name, presence: true # Make sure the owner's name is present. 

  belongs_to :seller
  belongs_to :product_category, optional: true
  has_many :orders
end
