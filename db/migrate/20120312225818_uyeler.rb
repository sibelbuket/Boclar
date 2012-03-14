class Uyeler < ActiveRecord::Migration
  def up
  	create_table :uyeler do |t|
      t.string :UyeAdi
      t.string :UyeMail
      t.text :description
 
      t.timestamps
  end

  def down
  	drop_table :uyeler
  end
end
