class CreateBorcs < ActiveRecord::Migration
  def change
    create_table :borcs do |t|
      t.string :Borclu
      t.integer :Miktar
      t.text :Notlar
      t.integer :UyeId

      t.timestamps
    end

    create_table :uyeler do |t|
      t.integer :UyeId
      t.string :UyeAdi
      t.string :UyeMail
    end
  end
end
