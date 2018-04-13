class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :description
      t.integer :list_id
      t.integer :status, :default => 0

      t.timestamps null: false
    end
  end
end
