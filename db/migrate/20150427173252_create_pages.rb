class CreatePages < ActiveRecord::Migration
  def up
    create_table :pages do |t|
      t.string :name
      t.integer :permalink
      t.integer :position
      t.boolean :visible

      add_foreign_key :pages, :subjects
      add_index("pages", "name")

      t.timestamps
    end
  end

  def down
    remove_index("pages", "name")
    remove_foreign_key :pages, :subjects

    drop_table :pages
  end
end
