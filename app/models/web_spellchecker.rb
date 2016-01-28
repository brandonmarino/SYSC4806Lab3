
class WebSpellChecker < Spellchecker

  def initialize()
    
  end

  def known (words)
    DictionaryWord.where('word in (:words)', words: words)
			.order(count: :desc)
			.pluck(:word)
  end
end

