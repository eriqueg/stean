class Jogo < ApplicationRecord
    belongs_to :classificacao
    has_many :bibliotecas_de_usuario, class_name: "BIblioteca"

    validates :titulo, :desenvolvedora, :lancamento, :descrecao, presence: true

    scope :por_titulo, lambda{ |titulo = nil|
    
        where(titulo: titulo) unless titulo.nil?
    
}

end
