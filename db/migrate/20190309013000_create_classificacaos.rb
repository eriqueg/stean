class CreateClassificacaos < ActiveRecord::Migration[5.2]
  def change
    create_table :classificacaos do |t|
      t.string :nome
      t.integer :idade_minima

      t.timestamps
    end
  end
end
