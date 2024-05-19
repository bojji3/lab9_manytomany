class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :name
      t.datetime :publication_date
      t.integer :edition

      t.timestamps
    end
  end
end
