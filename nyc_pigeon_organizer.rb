require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  data.each_with_object({}) do |(key, value), new_array|
    value.each do |first_key, names|
      names.each do |name|
        if !new_array[name]
          new_array[name] = {}
        end
        if !new_array[name][key]
          !new_array[name][key] = []
        end
        new_array[name][key] << first_key.to_s
      end
    end
  end
end
