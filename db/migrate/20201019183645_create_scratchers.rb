class CreateScratchers < ActiveRecord::Migration[6.0]
  def change
    create_table :scratchers do |t|
      t.string :item_name
      t.string :item_description
      t.string :item_size
      t.string :item_cost

      t.timestamps
    end
  end
end
