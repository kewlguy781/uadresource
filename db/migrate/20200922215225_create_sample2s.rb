class CreateSample2s < ActiveRecord::Migration[6.0]
  def change
    create_table :sample2s do |t|
      t.string :text
      t.belongs_to :sample, null: false, foreign_key: true

      t.timestamps
    end
  end
end
