class ChangeColumnNameOnUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :subcontents, :type, :subcontent_type
  end
end
