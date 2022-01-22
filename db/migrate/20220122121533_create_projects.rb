class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :url
      t.string :tech_stack, array: true, default: []
      t.text :description

      t.belongs_to :experience, index: true, foreign_key: true

      t.timestamps
    end
  end
end
