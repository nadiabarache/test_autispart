class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.integer :agediag
      t.string :paysdiag
      t.string :autistype
      t.string :psytrouble
      t.string :autretrouble
      t.references :user, index: true

      t.timestamps
    end
  end
end
