require 'rails_helper'

RSpec.describe 'Zip Codes', type: :request do
  describe 'GET api/v1/zip-codes/:zip_code' do
    it 'returns zip-code info' do
      Code.create(
        zip_code: 96_518,
        locality: 'Coatzacoalcos',
        federal_entity: 'Veracruz de Ignacio de la Llave',
        settlements: [
          {
            name: 'Playa Sol',
            zone_type: 'Urbano',
            settlement_type: 'Colonia'
          }
        ],
        municipality: 'Coatzacoalcos'
      )

      get '/api/v1/zip-codes/96518'
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body).size).to eql(2)
    end
  end
end
