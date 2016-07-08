require('word')
require('rspec')
require('definition')

describe(Word) do
  before() do
    Word.clear()
  end

  describe('#name') do
    it('returns the name of the word') do
      cheapster_word = Word.new("Cheapster")
      expect(cheapster_word.name()).to(eq("Cheapster"))
    end
  end

  describe('#id') do
    it('returns the id of the word') do
      kayleigh_word = Word.new("Kayleigh")
      kayleigh_word.save()
      expect(kayleigh_word.id()).to(eq(1))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves a new instance of a Word object in the words array') do
      shypod_word = Word.new('ShyPod')
      shypod_word.save()
      expect(Word.all()).to(eq([shypod_word]))
    end
  end

  describe('.clear') do
    it('empties the words array') do
      shypod_word = Word.new('Xzavier')
      shypod_word.save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#definitions') do
    it('initially returns an empty array of definitions objects in the word object') do
      snoping_word = Word.new('Snoping')
      snoping_word.save()
      expect(snoping_word.definitions()).to(eq([]))
    end
  end

  # describe('#add_definition') do
  #   it('adds a new definition to a word') do
  #     automagically_word = Word.new("Automagically")
  #     automagically_definition = Definition.new("Something that happens automatically, but in a way that, for some reason (typically because it is too complicated, or too ugly, or perhaps even too trivial), the speaker doesn't feel like explaining to you.")
  #     automagically_word.add_definition(automagically_definition)
  #     expec(automagically_word()).to(eq([automagically_definition]))
  #   end
  # end

end
