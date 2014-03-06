class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :pseudo
      t.integer :age
      t.string :sexe
      t.string :ville
      t.string :depart
      t.string :pays

      t.timestamps
    end
  end
end
