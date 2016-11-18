class Jeu < ApplicationRecord
  belongs_to :console, optional: true
end
