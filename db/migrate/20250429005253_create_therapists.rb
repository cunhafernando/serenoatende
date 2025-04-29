class CreateTherapists < ActiveRecord::Migration[8.0]
  def change
    create_table :therapists do |t|
      t.references :user, null: false, foreign_key: true
      t.string :especialidade
      t.text :bio
      t.text :disponibilidade

      t.timestamps
    end
  end
end
