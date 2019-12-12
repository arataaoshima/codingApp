class AddLevelIdToHomeIcons < ActiveRecord::Migration[6.0]
  def change
    add_column :home_icons, :level_id, :integer
  end
end
