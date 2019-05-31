# languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#     :javascript => {
#      :type => "interpreted"
#    },
#     :python => {
#      :type => "interpreted"
#    },
#     :java => {
#      :type => "compiled"
#    }
#   },
#   :functional => {
#     :clojure => {
#       :type => "compiled"
#     },
#     :erlang => {
#      :type => "compiled"
#    },
#     :scala => {
#      :type => "compiled"
#    },
#     :javascript => {
#      :type => "interpreted"
#    }
#   }
# }
#

def reformat_languages(languages)
  new_hash = {}
  lang_arr = []
  # grabs langs for lang_array
  languages.each do |style, kind|
    kind.each do |language, type|
      lang_arr << language
    end
  end
  # populates my #new_hash with lvl 1 langs
  # (used #uniq! to get rid of dupe lang)
  lang_arr.uniq!.each {|lang| new_hash[lang] = {}}

  # builds rest of #new_hash
  new_hash.each do |lang, attributes|
    languages.each do |style, kind|
      kind.each do |language, type|
        if lang == language
          if new_hash[lang].has_key?(:style)
            new_hash[lang][:style] << style
          else
            style_arr = []
            style_arr << style
            new_hash[lang] = {style: style_arr}
          end
        end
        type.each do |k, v|
          if lang == language
            new_hash[lang][k] = v
          end
        end
      end
    end
  end
    new_hash
end
