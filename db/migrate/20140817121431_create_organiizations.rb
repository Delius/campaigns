class CreateOrganiizations < ActiveRecord::Migration
  def change
    create_table :organiizations do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
