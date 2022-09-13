class CreateBids < ActiveRecord::Migration[6.1]
  def change
    create_table :bids do |t|
      t.string :name
      t.integer :id_no
      t.string :item_name
      t.integer :item_id
      t.integer :your_bid
      t.timestamps
    end
  end
end
