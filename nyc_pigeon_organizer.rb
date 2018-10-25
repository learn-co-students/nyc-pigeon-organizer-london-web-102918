def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, types|
    types.each do |type, pigeon_array|
      pigeon_array.each do |pigeon|
        pigeon_list[pigeon] ||= {}
        pigeon_list[pigeon][attribute] ||= []
        pigeon_list[pigeon][attribute].push(type.to_s)
      end
    end
  end
  pigeon_list
end

# double pipe equals "will only complete the assignment if
# the left side of our operation returns false or nil."
# https://medium.com/@jaredrayjohnson1/ruby-operators-double-pipe-equals-bfcbe21a7177
# double pipe equals "will only complete the assignment if 
# the left side of our operation returns false or nil."
# https://medium.com/@jaredrayjohnson1/ruby-operators-double-pipe-equals-bfcbe21a7177
