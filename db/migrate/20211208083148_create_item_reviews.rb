class CreateItemReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :item_reviews do |t|
      t.integer :user_id
      t.integer :item_id
      t.text :review

      t.timestamps
    end
  end
end
