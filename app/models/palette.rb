class Palette < ApplicationRecord
  has_many :colors

  validates :name, presence: true
  validates :is_color_history, inclusion: { in: [ true, false ] }
  validates :is_favorite, inclusion: { in: [ true, false ] }
  validates :is_locked, inclusion: { in: [ true, false ] }
end
