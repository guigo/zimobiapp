class CreateImmobiles < ActiveRecord::Migration[5.2]
  def change
    create_table :immobiles do |t|
      t.string :title
      t.string :description
      t.decimal :value
      t.text :history

      t.timestamps
    end
  end
end
