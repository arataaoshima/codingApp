class CreateSubcontents < ActiveRecord::Migration[6.0]
  def change
    create_table :subcontents do |t|
      t.string :name
      t.boolean :type
      t.integer :article_id
      t.integer :order

      t.timestamps
    end
  end
end
