require('rspec')
require('numbers_to_words')
require('pry')

describe('Fixnum#numbers_to_words') do
  it('it returns the word corresponding with the single-digit number entered') do
    expect(9.numbers_to_words()).to(eq("nine"))
  end

  it('it returns the word corresponding with the number in the teens') do
    expect(17.numbers_to_words()).to(eq("seventeen"))
  end

  it('it returns the word corresponding with the number between 20 and 99') do
    expect(24.numbers_to_words()).to(eq("twenty four"))
  end
end
