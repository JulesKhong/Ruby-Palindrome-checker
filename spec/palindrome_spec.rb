require('rspec')
require('palindrome')

describe('String#palindrome') do
  it("returns true if a word is a palindrome") do
    expect('racecar'.palindrome()).to(eq(true))
  end
  it("returns false if a word is not a palindrome") do
    expect('racerac'.palindrome()).to(eq(false))
  end
  it("returns true if a sentence is a palindrome") do
    expect('Do geese see God'.palindrome()).to(eq(true))
  end
  it("returns false if a sentence is not a palindrome") do
    expect('Does goose see God'.palindrome()).to(eq(false))
  end
end
