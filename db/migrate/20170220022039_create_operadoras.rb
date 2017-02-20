class CreateOperadoras < ActiveRecord::Migration[5.0]
  def change
    create_table :operadoras do |t|
      t.string :nome
      t.string :codigo
      t.string :categoria

      t.timestamps
    end
  end
end
