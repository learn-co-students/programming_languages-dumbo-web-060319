def reformat_languages(languages)
    # create an empty object, reformed_languages
    reformed_languages = {}
    # for each style of language
    languages.each do |style, bundle|

      bundle.each do |language, language_type| 
        puts "style: #{style} | lang: #{language} | type: #{language_type}"
        
      end

  end

end
