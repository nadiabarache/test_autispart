class CreateHumours < ActiveRecord::Migration
  def change
    create_table :humours do |t|
      t.string :day_humour
      t.string :event
      t.references :user, index: true

      t.timestamps
    end
  end
end
