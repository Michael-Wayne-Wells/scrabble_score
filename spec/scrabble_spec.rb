require('rspec')
require('scrabble')

describe(Scrabble) do

  describe('#letter_search') do
    it('makes the initialize work') do
      test = Scrabble.new("queen")
      expect(test.word).to(eq("queen"))
    end
  end

  describe('#letter_search') do
    it('A, E, I, O, U, L, N, R, S, T equals 1 point') do
      test = Scrabble.new("aei")
      expect(test.letter_search).to(eq(3))
    end
    it('D, G is two points') do
      test = Scrabble.new("dogle")
      expect(test.letter_search).to(eq(7))
    end
    it('b,c,m,p is three points') do
      test = Scrabble.new("bcmp")
      expect(test.letter_search).to(eq(12))
    end
    it('f,h,v,w,y equals four points') do
      test = Scrabble.new("fhvwy")
      expect(test.letter_search).to(eq(20))
    end
    it('k equals five points') do
      test = Scrabble.new("k")
      expect(test.letter_search).to(eq(5))
    end
    it('j,x equals eight points') do
      test = Scrabble.new("jx")
      expect(test.letter_search).to(eq(16))
    end
    it('q,z equals ten points') do
      test = Scrabble.new("qz")
      expect(test.letter_search).to(eq(20))
    end
  end

end
