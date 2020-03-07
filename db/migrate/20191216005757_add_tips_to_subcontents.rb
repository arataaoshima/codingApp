class AddTipsToSubcontents < ActiveRecord::Migration[6.0]
  def change
    add_column :subcontents, :tips, :text
  end
end
