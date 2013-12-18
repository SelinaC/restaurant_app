class CreateRestaurants < ActiveRecord::Migration

  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :town
      t.string :towns
      t.string :postcode
      t.string :norm_postcode
      t.string :phone
      t.string :cuisine
      t.string :email
      t.string :website
      t.string :image
      t.integer :hygiene_rating
      t.date :hygiene_rating_date
      t.decimal :longitude
      t.decimal :latitude
      t.string :factual_id

      t.timestamps
    end
  end

end
