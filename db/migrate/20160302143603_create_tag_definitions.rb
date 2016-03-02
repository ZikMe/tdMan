class CreateTagDefinitions < ActiveRecord::Migration
  def change
    create_table :tag_definitions do |t|
      t.string :name,                 null: false
      t.string :description
      t.string :entity_type,          null: false
      t.string :tag_type,             null: false
      t.boolean :structure,           default: false
      t.boolean :subjective,          default: false
      t.boolean :unique
      t.integer :tag_type_range_id
      t.integer :tag_target
      t.boolean :virtual,             default: false
      t.integer :virtual_target
      t.string :dev_status
      t.string :dev_pertinence
      t.integer :td_version_id,       null: false

      t.timestamps null: false
    end
  end
end
