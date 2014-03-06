class Placa < ActiveRecord::Base
  has_many :comentarios, dependent: :destroy
  validates_uniqueness_of :numero
  validates_format_of :numero, :without => /\A\d/

  def to_param
    numero
  end

  def self.find(numero)
    numero.to_i == 0 ? find_by(numero: numero) : super
  end
end
