class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :review_about
      t.text :review_body

      t.timestamps
    end
  end
end
