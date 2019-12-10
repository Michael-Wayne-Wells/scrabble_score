class Scrabble

  def initialize(word)
    @word = word
  end

  def word
    @word
  end

  def letter_search
    wordsone = @word.scan(/[aeioulnrstAEIOULNRST]/)
    score1 = wordsone.length()
    wordstwo = @word.scan(/[DGdg]/)
    score2 = 2 * wordstwo.length()
    wordsthree = @word.scan(/[bcmpBCMP]/)
    score3 = 3 * wordsthree.length()
    wordsfour = @word.scan(/[fhvwyFHVWY]/)
    score4 = 4 * wordsfour.length()
    wordsfive = @word.scan(/[k]/)
    score5 = 5 * wordsfive.length()
    wordssix = @word.scan(/[jxJX]/)
    score6 = 8 * wordssix.length()
    wordsseven = @word.scan(/[qzQZ]/)
    score7 = 10 * wordsseven.length()
    total = score1 + score2 + score3 + score4 + score5 + score6 + score7
  end
end
