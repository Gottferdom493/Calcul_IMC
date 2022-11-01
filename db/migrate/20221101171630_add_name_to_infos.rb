class AddNameToInfos < ActiveRecord::Migration[6.1]
  def change
    add_column :infos, :name, :string
  end
end
