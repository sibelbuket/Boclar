class DropTableUyeler < ActiveRecord::Migration
  def up
    drop_table :uyeler
    drop_table :uyelers
  end

  def down
  end
end
