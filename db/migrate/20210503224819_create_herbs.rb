class CreateHerbs < ActiveRecord::Migration[6.1]
  def change
    create_table :herbs do |t|
      t.string :name
      t.string :common_name
      t.text :medicinal_uses
      t.text :history
      t.text :spiritual_uses

      t.timestamps
    end
  end
end
