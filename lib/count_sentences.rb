require 'pry'

class String

  def sentence?
    self[-1] == '.'
  end

  def question?
    self[-1] == '?'
  end

  def exclamation?
    self[-1] == '!'
  end

  def count_sentences
    split_array = self.split(' ')
    select_array = split_array.select do |word|
      word.sentence? || word.question? || word.exclamation?
    end  
    select_array.length
  end
end

# binding.pry