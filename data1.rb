def id_hash(hashes)

  result = {}
  array =[]
  hashes.each do |hash|
    result[hash[:id]] = hash
  end
  result
end


require 'rspec/autorun'

RSpec.describe '#id_hash' do
  it 'returns a hash where the values are arrays of items, grouped by the :id key' do
    input = [
      {
        :id=>546,
        :name=>"Kalahari Resorts",
        :city=>"Wisconsin Dells",
        :state=>"Wisconsin",
        :country=>"United States"
      },
      {
        :id=>547,
        :name=>"Little Amerricka",
        :city=>"Marshall",
        :state=>"Wisconsin",
        :country=>"United States"
      }
    ]

    expected_result = {
      546 => {
        :id=>546,
        :name=>"Kalahari Resorts",
        :city=>"Wisconsin Dells",
        :state=>"Wisconsin",
        :country=>"United States"
      },
      547 => {
        :id=>547,
        :name=>"Little Amerricka",
        :city=>"Marshall",
        :state=>"Wisconsin",
        :country=>"United States"
      }
    }

    expect(id_hash(input)).to eq(expected_result)
  end
end
