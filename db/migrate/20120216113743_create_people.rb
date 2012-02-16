class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
