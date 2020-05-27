class CreateBerries < ActiveRecord::Migration[5.2]
  def change
    create_table :berries do |t|
      t.string :title
      t.string :image_url

      t.timestamps
    end
  end
end
