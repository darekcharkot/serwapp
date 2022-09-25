class RenameColumnHardwares < ActiveRecord::Migration[7.0]
  def change
  	rename_column :hardwares, :type, :device
  end
end
