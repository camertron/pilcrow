# encoding: UTF-8

require File.expand_path('../../vendor/icu4j-53_1.jar', __FILE__)

java_import 'com.ibm.icu.util.ULocale'
java_import 'com.ibm.icu.text.BreakIterator'

module Pilcrow
  class << self

    def process(text, locale)
      insert_markers(segment_text(text, locale))
    end

    private

    def segment_text(text, locale)
      brkiter = BreakIterator.getWordInstance(ULocale.new(locale))
      brkiter.setText(text)
      start = brkiter.first
      segments = []

      until (stop = brkiter.next) == BreakIterator::DONE
        segments << text[start...stop]
        start = stop
      end

      segments
    end

    def insert_markers(segments)
      # pilcrow character: http://en.wikipedia.org/wiki/Pilcrow
      segments.join("-")
    end

  end
end
