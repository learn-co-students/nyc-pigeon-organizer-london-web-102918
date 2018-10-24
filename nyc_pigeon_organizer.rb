def nyc_pigeon_organizer(data)
  pigeonpedia = {}
  data.each do |color, colors|
    colors.each do |color, color_birds|
      color_birds.each do |name|
        pigeonpedia[name] = {color: [], gender: [], lives: []}
      end
    end
  end
  #colors
  data[:color].each do |color, color_birds|
    color_birds.each do |name|
      pigeonpedia[name][:color] << color.to_s
    end
  end

 #gender
 data[:gender].each do |sex, sex_birds|
   sex_birds.each do |name|
    pigeonpedia[name][:gender] << sex.to_s
   end
 end

 #lives
 data[:lives].each do |location, location_birds|
   location_birds.each do |name|
     pigeonpedia[name][:lives] << location.to_s
   end
 end
  pigeonpedia
end
