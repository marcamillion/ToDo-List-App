class AddColumnToList < ActiveRecord::Migration
  def change
    add_column :lists, :task_id, :integer
  end
end
