require 'pry'

def nyc_pigeon_organizer(data)
  pigeons = {}
  holder = []
  data.each_with_object({}) do |(key, value), output|
    value.each do |inner_key, names|
      names.each do |n|
        if(!output.include?(n))
          output[n] = {}
        end
        if (!output[n][key])
          output[n][key] = []
        end
        output[n][key].push(inner_key.to_s)
      end
    end
  end
end

pigeon_data = {
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
