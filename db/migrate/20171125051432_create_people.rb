class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :connections
      t.string :partner
      t.string :children
      t.string :notes

      t.timestamps
    end
  end
end
