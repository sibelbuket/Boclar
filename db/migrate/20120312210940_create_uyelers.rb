class CreateUyelers < ActiveRecord::Migration
  def change
    create_table :uyelers do |t|
      t.string :UyeAdi
      t.string :UyeMail

      t.timestamps
    end
  end
end
