class CreateBIbliotecas < ActiveRecord::Migration[5.2]
  def change
    create_table :b_ibliotecas do |t|
      t.belongs_to :usuario, foreign_key: true
      t.belongs_to :jogo, foreign_key: true

      t.timestamps
    end
  end
end
