#require 'pry'
def nyc_pigeon_organizer(data)
  the_end = data.each_with_object({}) do |(key, value), accumulatorarr|
    #binding.pry
    value.each do |insidekey, names|
      names.each do |lastname|
        if !accumulatorarr[lastname]
          accumulatorarr[lastname] = {}
        end
            if !accumulatorarr[lastname][key]
              !accumulatorarr[lastname][key] = []
        end
accumulatorarr[lastname][key].push(insidekey.to_s)
        end
    end
    #accumulatorarr
  end
  #binding.pry
  # write your code here!
end
