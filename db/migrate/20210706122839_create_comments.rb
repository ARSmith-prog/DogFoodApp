class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comment do |t|
      t.text :content
      t.string :name

      t.timestamps
    end
  end
end
