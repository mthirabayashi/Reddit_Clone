class CreateSubs < ActiveRecord::Migration
  def change
    create_table :subs do |t|
      t.string :title, null: false
      t.string :description
      t.integer :moderator_id, null: false

      t.timestamps null: false
    end

    add_index :subs, [:moderator_id, :title], unique: true
  end
end
