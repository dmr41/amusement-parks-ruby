require 'yaml'
require 'pp'

raw_string = File.read('../data/amusement_parks.yml')
hashes = YAML.load(raw_string)


def id_hash(hashes)
  result = {}
  hashes.each do |hash|
    result[hash[:id]] = hash
  end
  result
end

def country_hash(hashes)
  result = {}
  hashes.each do |hash|
    value = hash[:country]
    result[value] ||= []
    result[value] << hash
  end
  result
end

def state_country_hash(hashes)
  result = {}
  hashes.each do |hash|
    value = "#{hash[:state]}, #{hash[:country]}"
    result[value] ||= []
    result[value] << hash
  end
  result
end

 pp id_hash(hashes)

 pp country_hash(hashes)

 pp state_country_hash(hashes)
