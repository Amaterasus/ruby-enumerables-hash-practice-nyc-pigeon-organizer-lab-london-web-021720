def nyc_pigeon_organizer(data)
  # write your code here!
  output = {}
  
  data.each do |attribute|
    attribute.each do |nested_attribute , names|
      names.each do |name|
        output[name] = {attribute => [nested_attribute]}
      end
    end
  end
  
  return output
end
