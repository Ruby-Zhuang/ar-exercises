class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }

  # Stores must carry at least either mens or womens apparel
  validate :carries_clothing_apparel

  def carries_clothing_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:base, "Store must carry at least one of the men's or women's apparel")
    end
  end
end
