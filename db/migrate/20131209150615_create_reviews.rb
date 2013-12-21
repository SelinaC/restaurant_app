class CreateReviews < ActiveRecord::Migration

  def change
    create_table :reviews do |t|
      t.belongs_to :user
      t.belongs_to :restaurant

      t.string :title
      t.string :body
      t.string :recommended_for

      t.timestamps
    end
  end
end
