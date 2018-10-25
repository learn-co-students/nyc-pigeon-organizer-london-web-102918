def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |description, options|
    options.each do |option, pigeons|
      pigeons.each do |pigeon|
        new_hash[pigeon] ||= {}
        new_hash[pigeon][description] ||= []
        new_hash[pigeon][description] << option.to_s
      end
    end
  end
  new_hash
end
