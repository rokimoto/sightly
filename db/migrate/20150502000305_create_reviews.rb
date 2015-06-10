class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :photo
      t.text :content
      t.belongs_to :user
      t.belongs_to :location

      t.timestamps null: false
    end
  end
end
