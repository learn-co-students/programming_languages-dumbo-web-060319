def reformat_languages(languages)
    # create an empty object, reformed_languages
    reformed_languages = {}
    # for each style of language
    languages.each do |style, bundle|

      bundle.each do |language, language_type| 

        if reformed_languages.has_key?(language)
          reformed_languages[language][:style].push(style)
        else
          reformed_languages[language] = {:type => language_type[:type], :style => []}
          reformed_languages[language][:style].push(style)
        end

      end

  end
  reformed_languages
end
