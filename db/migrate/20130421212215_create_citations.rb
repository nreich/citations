class CreateCitations < ActiveRecord::Migration
  def change
    create_table :citations do |t|
      t.string :title
      t.text :abstract
      t.date :publish_date
      t.string :authors

      t.timestamps
    end
  end
end
