class CreateInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :infos do |t|
      t.integer :taille
      t.integer :poids

      t.timestamps
    end
  end
end
