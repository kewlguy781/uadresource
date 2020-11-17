class CreateCatergories < ActiveRecord::Migration[6.0]
  def change
    create_table :catergories do |t|
      t.string :title
      t.string :desc
      t.string :icon

      t.timestamps
    end
  end
end
