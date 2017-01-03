class AddConsoleToJEu < ActiveRecord::Migration[5.0]
  def change
    add_reference :jeus, :console, foreign_key: "title"
  end
end
