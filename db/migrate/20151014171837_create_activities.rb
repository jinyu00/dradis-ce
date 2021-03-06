class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string  :user,           null: false
      t.string  :trackable_type, null: false
      t.integer :trackable_id,   null: false
      t.string  :action,         null: false

      t.timestamps
    end
    add_index :activities, [:trackable_id, :trackable_type]
    add_index :activities, :created_at
  end
end
