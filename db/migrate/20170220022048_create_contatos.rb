class CreateContatos < ActiveRecord::Migration[5.0]
  def change
    create_table :contatos do |t|
      t.string :nome
      t.string :telefone
      t.datetime :date
      t.references :operadora, foreign_key: true

      t.timestamps
    end
  end
end
