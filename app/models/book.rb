class Book < ApplicationRecord
  #belongs_to :user, optional: true

 # validates :title, :author, :publication,:date_published,:price, presence:true
 # validates :description, length: {maximum: 1000, too_long: "%{count} characters is the maximum allowed."}
 # validates :title, length: {maximum: 140, too_long: "%{count} characters is the maximum allowed."}
 # validates :price, numericality: {only_integer: true}, length: {maximum: 7}

end
