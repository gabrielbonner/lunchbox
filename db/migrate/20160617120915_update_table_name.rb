class UpdateTableName < ActiveRecord::Migration
  def change
    rename_table :lunchboxmarkers, :lunchbox_markers
  end
end
