class CreateActiveDynamicAttributesTable < ActiveRecord::Migration[4.2]

  def change
    create_table :active_dynamic_attributes do |t|
      t.integer :customizable_id, null: false
      t.string :customizable_type, limit: 50

      t.string :display_name, null: false
      t.string :name
      t.text :value
      t.integer :datatype

      t.timestamps
    end

    add_index :active_dynamic_attributes, :customizable_id
    add_index :active_dynamic_attributes, :customizable_type
  end

end
