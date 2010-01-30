module I18n
  class << self    
    def translate_with_highlight(key, options = {})
      comment = "<!-- Key: #{key} -->"
      result = translate_without_hightlight(key, options)
      "<span style='color:#00FF00;'>" + result + "</span>" + comment
    end

    alias_method :translate_without_hightlight, :translate
    alias_method :translate, :translate_with_highlight
  end
end
