class CreateUyelers < ActiveRecord::Migration
  def up
    create_table :uyelers do |t|
      t.string :uyeler
       t.string :UyeAdi
      t.string :UyeMail
      t.text :description
      t.text :description

      t.timestamps
    end
  def down
  	drop_table :uyeler
  end
end
