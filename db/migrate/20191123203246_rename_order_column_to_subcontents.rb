class RenameOrderColumnToSubcontents < ActiveRecord::Migration[6.0]
  def change
    rename_column :subcontents, :order, :sub_order
  end
end
