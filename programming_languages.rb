def reformat_languages(languages)
  new_hash = {}
  languages.each do |type, language|
    language.each do |name, attributes|
      new_hash[name] ||= attributes
      new_hash[name][:style] ||= []
      new_hash[name][:style] << type
    end
  end
  new_hash
end
