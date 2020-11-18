class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :email
      t.string :facebook
      t.string :web
      t.string :phone
      t.text :desc
      t.boolean :isActive
      t.boolean :isPending
      t.string :icon
      t.string :img
      t.string :lat
      t.string :long
      t.string :keyword
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :catergory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
