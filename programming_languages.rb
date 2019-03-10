def reformat_languages(languages)
  new_hash = {}
  languages.each {|style, language_hash|
    language_hash.each{|language, type_hash|
      type_hash.each{|type, string|
        if new_hash[language].nil?
          new_hash[language] ={}
        end
        if new_hash[language][type].nil?
          new_hash[language][type] = string
        end
        new_hash[language][:style] ||= []
        new_hash[language][:style] << style
        }
      }
    }
  new_hash
end
