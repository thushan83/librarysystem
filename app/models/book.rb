class Book < ApplicationRecord
  belongs_to :subject
  validates_presence_of :title , :isbn , :author
  validates_numericality_of :price, :message => "Invalid price format."
  mount_uploader :image , BookimageUploader
end
