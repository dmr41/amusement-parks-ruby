def state_country_hash(hashes)

  result = {}
  hashes.each do |hash|
    value = "#{hash[:state]}, #{hash[:country]}"
    result[value] ||= []
    result[value] << hash
  end
  result
end


require 'rspec/autorun'

RSpec.describe '#state_country_hash' do
  it 'returns a hash where the values are arrays of items, grouped by the :country key' do
    input = [
      {
        :id=>3,
        :name=>"Galaxyland",
        :city=>"Edmonton",
        :state=>"Alberta",
        :country=>"Canada"
      },
      {
        :id=>4,
        :name=>"Heratage Park",
        :city=>"Calgary",
        :state=>"Alberta",
        :country=>"Canada"
      },
      {
        :id=>6,
        :name=>"Playland (Vancouver)",
        :city=>"Vancouver",
        :state=>"British Columbia",
        :country=>"Canada"
      },
      {
        :id=>8,
        :name=>"Crystal Palace Amusement Park",
        :city=>"Dieppe",
        :state=>"New Brunswick",
        :country=>"Canada"
      }
    ]

    expected_result = {
      "Alberta, Canada" => [
        {
          :id => 3,
          :name => "Galaxyland",
          :city => "Edmonton",
          :state => "Alberta",
          :country => "Canada"
        },
        {
          :id => 4,
          :name => "Heratage Park",
          :city => "Calgary",
          :state => "Alberta",
          :country => "Canada"
        },
      ],
      "British Columbia, Canada" => [
        {
          :id => 6,
          :name => "Playland (Vancouver)",
          :city => "Vancouver",
          :state => "British Columbia",
          :country => "Canada"
        },
      ],
      "New Brunswick, Canada" => [
        {
          :id => 8,
          :name => "Crystal Palace Amusement Park",
          :city => "Dieppe",
          :state => "New Brunswick",
          :country => "Canada"
        }
      ]
    }

    expect(state_country_hash(input)).to eq(expected_result)
  end
end
