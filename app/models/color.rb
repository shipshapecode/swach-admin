class Color < ApplicationRecord
  belongs_to :palette

  # serialize :color_order, Array
end
