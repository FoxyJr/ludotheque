class Jeu < ApplicationRecord
  belongs_to :console, required: false, foreign_key: "console_id"
  def console_title
    console.title if console
  end
end
