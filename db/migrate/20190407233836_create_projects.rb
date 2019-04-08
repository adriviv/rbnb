class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :location
      t.string :category
      t.string :rewards
      t.integer :amount_objective
      t.string :video
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
