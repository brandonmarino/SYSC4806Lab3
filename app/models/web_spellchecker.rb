
class WebSpellChecker < Spellchecker

  def initialize()
    
  end

  def known (words)
    DictionaryWord.where('word in (:words)', list: words)
			.order(count: :word)
			.pluck(:word)
  end
end

