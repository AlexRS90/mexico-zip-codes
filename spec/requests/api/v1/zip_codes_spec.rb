require 'swagger_helper'

RSpec.describe 'api/v1/zip_codes', type: :request do
  path '/api/v1/zip-codes/{zip_code}' do
    # You'll want to customize the parameter types...
    parameter name: 'zip_code', in: :path, type: :string, description: 'zip_code'

    get('show zip_code') do
      response(200, 'successful') do
        let(:zip_code) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
