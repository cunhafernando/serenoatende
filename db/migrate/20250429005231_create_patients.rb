class CreatePatients < ActiveRecord::Migration[8.0]
  def change
    create_table :patients do |t|
      t.references :user, null: false, foreign_key: true
      t.text :historico_medico

      t.timestamps
    end
  end
end
