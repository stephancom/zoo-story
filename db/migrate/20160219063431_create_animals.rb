class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.references :zoo, index: true, foreign_key: true
      t.references :species, index: true, foreign_key: true

      t.timestamps null: false
    end

    # these were not demanded in the spec, but I like having them
    add_column :zoos, :animals_count, :integer
    add_column :species, :animals_count, :integer
  end
end
