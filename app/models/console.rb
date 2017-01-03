class Console < ApplicationRecord
  has_many :jeu
  def name
    "#{title}"
  end
end
