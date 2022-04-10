class Code < ApplicationRecord
  validates :d_codigo, presence: true
  validates :d_asenta, presence: true
  validates :d_tipo_asenta, presence: true
  validates :d_mnpio, presence: true
  validates :d_estado, presence: true
  validates :d_ciudad, presence: true
  validates :d_CP, presence: true
  validates :c_estado, presence: true, numericality: { minimum: 1, maximum: 32}
  validates :c_oficina, presence: true
end
