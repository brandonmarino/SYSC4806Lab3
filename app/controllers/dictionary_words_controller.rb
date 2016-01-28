require "#{Rails.root}/app/models/web_spellchecker.rb"
class DictionaryWordsController < ApplicationController
  
  def spellcheck
    input_word = params[:term]
    webspellcheck=WebSpellChecker.new
    out_hash = {"term " => input_word,"suggestions " =>webspellcheck.correct(input_word) }
    render :json => out_hash 
  end
end
