class CreateHabers < ActiveRecord::Migration[5.2]
  def change
    create_table :habers do |t|
      t.string :baslik
      t.string :resim
      t.text :govde
      t.integer :tiklanma

      t.timestamps
    end
  end
end
