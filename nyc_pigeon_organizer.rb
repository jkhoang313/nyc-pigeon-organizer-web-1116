def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |attribute_name, values|
    values.each do |type, pigeons_array|
      pigeons_array.each do |name|
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
        end
        if pigeon_list[name][attribute_name] == nil
          pigeon_list[name][attribute_name] = [type.to_s]
        else
          pigeon_list[name][attribute_name].push(type.to_s)
        end
      end
    end
  end
  pigeon_list
end
