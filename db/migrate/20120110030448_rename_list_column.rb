class RenameListColumn < ActiveRecord::Migration
  def up
		rename_column	:lists, :item, :name
  end

  def down
		rename_column	:lists, :name, :item
  end
end
