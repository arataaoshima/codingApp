class CreateHomeIcons < ActiveRecord::Migration[6.0]
  def change
    create_table :home_icons do |t|
      t.string :icon_name
      t.string :icon_iamge

      t.timestamps
    end
  end
end
