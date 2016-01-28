require "#{Rails.root}/app/models/web_spellchecker.rb"
class DictionaryWordsController < ApplicationController
  def spellcheck
    input_word = params[:term]
    webspellcheck=WebSpellChecker.new
    render :json => "#{webspellcheck.correct(input_word)}" 
  end
end
