class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :species
      t.string :address
      t.date :found_on

      t.timestamps
    end
  end
end
