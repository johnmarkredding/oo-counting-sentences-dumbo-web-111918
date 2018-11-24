require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    delimiters = ['!', '.', '?']
    split(Regexp.union(delimiters))
    self.squeeze.split()
  end
end