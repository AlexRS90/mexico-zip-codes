require 'csv'

csv_codes = File.read(Rails.root.join('db/zip_codes.csv'))
zip_codes = CSV.parse(csv_codes, headers: true, encoding: 'ISO-8859-1')

zip_codes.each do |row|
  record = Code.new
  record.d_codigo = row['d_codigo']
  record.d_asenta = row['d_asenta']
  record.d_tipo_asenta = row['d_tipo_asenta']
  record.d_mnpio = row['d_mnpio']
  record.d_estado = row['d_estado']
  record.d_ciudad = row['d_ciudad']
  record.d_CP = row['d_CP']
  record.c_estado = row['c_estado']
  record.c_oficina = row['c_oficina']
  record.c_CP = row['c_CP']
  record.c_tipo_asenta = row['c_tipo_asenta']
  record.c_mnpio = row['c_mnpio']
  record.id_asenta_cpcons = row['id_asenta_cpcons']
  record.d_zona = row['d_zona']
  record.c_cve_ciudad = row['c_cve_ciudad']
  record.save
end