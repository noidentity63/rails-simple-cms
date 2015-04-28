class CreateSections < ActiveRecord::Migration
  def up
    create_table :sections do |t|
      t.string :name
      t.integer :position
      t.boolean :visible
      t.string :content_type
      t.text :content

      add_foreign_key :sections, :pages
      add_index("sections", "name")

      t.timestamps
    end
  end

  def down
    remove_index("sections", "name")
    remove_foreign_key :sections, :pages

    drop_table :sections
  end
end
