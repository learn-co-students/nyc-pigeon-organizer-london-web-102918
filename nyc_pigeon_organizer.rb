def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |color, colors|
    colors.each do |color, color_birds|
      color_birds.each do |name|
        pigeon_list[name] = {color: [], gender: [], lives: []}
      end
    end
  end
  #colors
  data[:color].each do |color, color_birds|
      color_birds.each do |name|
        pigeon_list.keys.each do |key|
          if key == name
            pigeon_list[name][:color] << color.to_s
          end
        end
    end
  end

 #gender
 data[:gender].each do |sex, sex_birds|
   sex_birds.each do |name|
     pigeon_list.keys.each do |key|
       if key == name
         pigeon_list[name][:gender] << sex.to_s
       end
     end
   end
 end

 #lives
 data[:lives].each do |location, location_birds|
   location_birds.each do |name|
     pigeon_list.keys.each do |key|
       if key == name
         pigeon_list[name][:lives] << location.to_s
       end
     end
   end
 end
  pigeon_list
end
