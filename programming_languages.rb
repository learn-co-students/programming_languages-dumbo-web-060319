
def reformat_languages (languages_by_style)
  # your code here 
  new_hash = {}

  languages_by_style.each do |key, data|

    data.each do |nested_key, nested_data|

      #find out if key has been added
        if new_hash.has_key? (nested_key)
          #if it has been added, insert into array using <<
          new_hash[nested_key][:style] << key
          
        #else do this:
        else
          new_hash[nested_key] = nested_data
          new_hash[nested_key][:style] = [key]
        end
        
    end
  end
    new_hash
    #binding.pry
end

#reformat_languages