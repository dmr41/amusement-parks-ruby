# Indexing

You work for a tourism agency, and your job is to promote amusement parks.  You have been given a list of amusement
parks and you need to write code to help organize the data.

Your mission, should you choose to accept it, is to group amusement parks by
* ID
* Country
* Country / State

## Challenge 1 - Indexing by ID

You need to provide a way to get extremely fast access to amusement parks by their ID.

So given the following array:

```ruby
[
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
```

Your code should produce the following hash:
id_hash
```ruby
{
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
```
## Challenge 2 - Indexing by Country

So given the following array:

```ruby
[
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
   },
  {
    :id=>2,
    :name=>"Calaway Park",
    :city=>"Calgary",
    :state=>"Alberta",
    :country=>"Canada"
  }
]
```

Your code should produce the following hash:
country_hash
```ruby
{
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
```

## Challenge 3 - Indexing by Country and State

Given the following array:

```ruby
[
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
```

Your code should return the following hash:
state_country_hash
```ruby
{
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
```
