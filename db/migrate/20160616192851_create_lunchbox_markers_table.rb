class CreateLunchboxMarkersTable < ActiveRecord::Migration
  def change
    create_table :lunchboxmarkers do |t|
      t.string :name
      t.string :description
      t.string :tags
      t.string :latitude
      t.string :longitude
    end
  end
end
