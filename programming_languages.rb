def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |type, language|
  	language.each do |lang, description|
  	  if !(new_hash.include?(lang))
  	    array = []
  	    array.push(type)
  	    new_hash[lang] = {type: description[:type], style: array}
  	  else
        new_hash[lang][:style].push(type)
      end
    end
  end
  new_hash
end
