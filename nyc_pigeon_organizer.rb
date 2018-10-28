def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, datum|
    datum.each do |stat, name|
      name.each do |pigeon|
      pigeon_list[pigeon] ||= {}
      pigeon_list[pigeon][attribute] ||= []
      pigeon_list[pigeon][attribute] << stat.to_s
      end
    end
  end
  pigeon_list
end
