class CreateJeus < ActiveRecord::Migration[5.0]
  def change
    create_table :jeus do |t|
      t.string :title
      t.string :description
      t.integer :rank

      t.timestamps
    end
  end
end
