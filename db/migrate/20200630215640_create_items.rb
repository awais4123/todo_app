class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.boolean :is_complete, default: :false
      t.integer :list_id
      
      t.timestamps
    end
  end
end
