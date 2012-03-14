class AddUyeidToBorcs < ActiveRecord::Migration
  def change
    add_column :borcs, :UyeId, :integer

  end
end
