class Scrabble

  def initialize(word)
    @word = word
  end

  def word
    @word
  end

  def letter_search
    words1 = @word.scan(/[aeioulnrstAEIOULNRST]/).length()
    words2 = @word.scan(/[DGdg]/).length() * 2
    words3 = @word.scan(/[bcmpBCMP]/).length * 3
    words4 = @word.scan(/[fhvwyFHVWY]/).length * 4
    words5 = @word.scan(/[k]/).length * 5
    words8 = @word.scan(/[jxJX]/).length * 8
    words10 = @word.scan(/[qzQZ]/).length * 10
    total = words1 + words2 + words3 + words4 + words5 + words8 + words10
  end
end
