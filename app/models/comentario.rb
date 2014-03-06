class Comentario < ActiveRecord::Base
  validates :coment, presence: true
  belongs_to :placa
  default_scope -> { order('created_at DESC') }
end
