class CreateMoos < ActiveRecord::Migration[5.1]
  def change
    create_table :moos do |t|
      t.string :classes
      t.string :description
      t.string :lessons
      t.string :content

      t.timestamps
    end
  end
end
