class CreateTdVersions < ActiveRecord::Migration
  def change
    create_table :td_versions do |t|
      t.string :name,       null: false
      t.string :comment

      t.timestamps          null: false
    end
  end
end
