require 'rails_helper'

RSpec.describe Code, type: :model do
  before do
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
  end

  it 'expects zip_code to not be empty' do
    subject.zip_code = nil
    expect(subject).to_not be_valid
  end

  it 'has 1 record' do
    expect(Code.count).to eq(51_988)
  end

  it 'expects locality to not be empty' do
    subject.locality = nil
    expect(subject).to_not be_valid
  end

  it 'expects federal_entity to not be empty' do
    subject.federal_entity = nil
    expect(subject).to_not be_valid
  end

  it 'expects settlements to not be empty' do
    subject.settlements = nil
    expect(subject).to_not be_valid
  end

  it 'expects municipality to not be empty' do
    subject.municipality = nil
    expect(subject).to_not be_valid
  end
end
