class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.string :color
      t.string :brand
      t.string :size

      t.timestamps
    end
  end
end
