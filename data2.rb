def country_hash(hashes)

  result = {}
  hashes.each do |hash|
    value = hash[:country]
    result[value] ||= []
    result[value] << hash
  end
  result
end


require 'rspec/autorun'

RSpec.describe '#country_hash' do
  it 'returns a hash where the values are arrays of items, grouped by the :country key' do
    input = [
      {
        :id=>2,
        :name=>"Calaway Park",
        :city=>"Calgary",
        :state=>"Alberta",
        :country=>"Canada"
      },
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
      "Canada" => [
        {
          :id=>2,
          :name=>"Calaway Park",
          :city=>"Calgary",
          :state=>"Alberta",
          :country=>"Canada"
        }
      ],
       "United States" => [
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
    }

    expect(country_hash(input)).to eq(expected_result)
  end
end
