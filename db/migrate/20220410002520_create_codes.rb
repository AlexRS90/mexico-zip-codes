class CreateCodes < ActiveRecord::Migration[7.0]
  def change
    create_table :codes do |t|
      t.integer :d_codigo
      t.string :d_asenta, limit: 200
      t.string :d_tipo_asenta, limit: 200
      t.string :d_mnpio, limit: 200
      t.string :d_estado, limit: 200
      t.string :d_ciudad, limit: 200
      t.integer :d_CP
      t.integer :c_estado
      t.integer :c_oficina
      t.integer :c_CP
      t.integer :c_tipo_asenta
      t.integer :c_mnpio
      t.integer :id_asenta_cpcons
      t.string :d_zona, limit: 200
      t.integer :c_cve_ciudad

      t.timestamps
    end
  end
end
