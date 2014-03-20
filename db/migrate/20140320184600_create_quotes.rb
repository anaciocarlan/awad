class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.integer :id
      t.string :author
      t.text :quote

      t.timestamps
    end
  end
end
