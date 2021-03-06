def nyc_pigeon_organizer(data)
  # write your code here!
  output = {}
  
  data.each do |attribute, attribute_array|
    attribute_array.each do |nested_attribute , names|
      names.each do |name|
        if !output[name]
          output[name] = {attribute => []}
        end
        
        if !output[name][attribute]
          output[name][attribute] = []
        end
        
        output[name][attribute].push(nested_attribute.to_s)
      end
    end
  end
  
  return output
end
