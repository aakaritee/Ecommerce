class Book < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item
  mount_uploader :image, ImageUploader
  serialize :image, JSON #JSON because we're using sqlite
  belongs_to :user, optional: true

  validates :title, :author, :condition, :publication, :date_published, :price, presence:true
  validates :description, length: {maximum: 1000, too_long: "%{count} characters is the maximum allowed."}
  validates :title, length: {maximum: 140, too_long: "%{count} characters is the maximum allowed."}
  validates :price, numericality: {only_integer: true}, length: {maximum: 7}

  CONDITION = %w{ New Used-Excellent Used-Good Used-Acceptable }
  
  has_many :line_items
  
  private
    def not_referenced_by_any_line_item
      unless line_items.empty?
        errors.add(:base, 'Line items present')
        throw :abort
      end
    end

end
