def reformat_languages(languages)
  hash = {}
    languages.each do |style, data|
      data.each do |lang, type|
        if hash.has_key?(lang)
          hash[lang][:style] << style
        else
          hash[lang] = type
          hash[lang][:style] = [style]
        end
      end
    end
  hash
end