class Variant < ApplicationRecord
  belongs_to :product
  has_many :option_value_variants
  has_many :option_values, through: :option_value_variants

  accepts_nested_attributes_for :option_value_variants

  validates :sku, presence: true, uniqueness: true
  validates :quantity, presence: true
  validates :price, presence: true
end
