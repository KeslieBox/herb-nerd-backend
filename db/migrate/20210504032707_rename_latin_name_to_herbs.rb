class RenameLatinNameToHerbs < ActiveRecord::Migration[6.1]
  def change
      rename_column :herbs, :name, :latin_name
  end
end
