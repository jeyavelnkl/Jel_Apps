class CreateDesiginations < ActiveRecord::Migration[5.0]
  def change
    create_table :desiginations do |t|
      t.string :name

      t.timestamps
    end
  end
end
