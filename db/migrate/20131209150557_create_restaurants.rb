class CreateRestaurants < ActiveRecord::Migration

  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :town
      t.string :postcode
      t.string :phone
      t.string :cuisine
      t.string :email
      t.string :website
      t.string :hygiene_rating

      t.timestamps
    end
  end

end
