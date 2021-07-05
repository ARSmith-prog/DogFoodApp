class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :title
      t.integer :age
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
