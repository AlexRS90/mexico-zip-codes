require 'csv'

csv_codes = File.read(Rails.root.join('db/zip_codes.csv'))
zip_codes = CSV.parse(csv_codes, headers: true, encoding: 'ISO-8859-1')

zip_codes.each do |row|
  record = Code.new
  record.zip_code = row['d_codigo']
  record.locality = row['d_ciudad']
  record.federal_entity = row['d_estado']
  record.settlements = [{
    'name': row['d_asenta'],
    'zone_type': row['d_zona'],
    'settlement_type': row['d_tipo_asenta']
  }]
  record.municipality = row['d_mnpio']  
  record.save
end