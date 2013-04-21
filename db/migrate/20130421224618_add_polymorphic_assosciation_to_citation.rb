class AddPolymorphicAssosciationToCitation < ActiveRecord::Migration
  def change
    add_column :citations, :citable_id, :integer
    add_column :citations, :citable_type, :string
  end
end
