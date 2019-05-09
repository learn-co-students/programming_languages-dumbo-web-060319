def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |styles, info|
    info.each do |lang, details|
      #details.each do |key, value|
        new_hash[lang] = details
        new_hash[lang][:style] = [styles]
        if lang == :javascript 
          new_hash[lang][:style] = [:oo, :functional]
        end
      #end
    end
  end
new_hash
end
