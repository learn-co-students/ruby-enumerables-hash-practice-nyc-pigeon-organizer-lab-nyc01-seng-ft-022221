require "pry"


def nyc_pigeon_organizer(data)
  # write your code here!
  
  list = {}
  
  default_hash = {
    :color => [],
    :gender => [],
    :lives => []
  }
  
  data.each do |attribute, val|
    data[attribute].each do |key, value|
      #binding.pry
      data[attribute][key].each do |name|
        if list.key?(name) == false
          list[name] = {:color => [], :gender => [], :lives => []}
        end
        #binding.pry
        list[name][attribute].push(key.to_s)
        #binding.pry
      end
    end
  end
  
 
  
  
  
  
  
  
  
  
  return list
  
end

pigeon_data = {
  :color => {
    :brown => ["Luca"],
    :black => ["Lola"],
  },
  :gender => {
    :male => ["Luca"],
    :female => ["Lola"]
  },
  :lives => {
    "Central Park" => ["Lola"],
    "Library" => ["Luca"]
  }
}

pigeon_data1 = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}


puts nyc_pigeon_organizer(pigeon_data)
puts nyc_pigeon_organizer(pigeon_data1)