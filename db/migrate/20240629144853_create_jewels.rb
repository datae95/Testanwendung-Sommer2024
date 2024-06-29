class CreateJewels < ActiveRecord::Migration[7.1]
  def change
    create_table :jewels do |t|
      t.string :name
      t.string :version
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
