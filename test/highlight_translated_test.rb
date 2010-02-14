require 'test_helper'
require File.dirname(__FILE__) + '/../lib/highlight_translated'

class HighlightTranslatedTest < ActiveSupport::TestCase

  test "it should return the translated text wrapped inside span tag" do
    I18n.stubs(:translate_without_hightlight).returns("abc")
    translated_text = I18n.translate('abc')
    assert_equal "<span style='color:#00FF00;'>abc</span><!-- Key: abc -->", translated_text
  end

  test "it should return 'translation missing' if the translation is not defined" do
    translated_text = I18n.translate('abc')
    assert_equal "<span style='color:#00FF00;'>translation missing: en, abc</span><!-- Key: abc -->", translated_text
  end

end
