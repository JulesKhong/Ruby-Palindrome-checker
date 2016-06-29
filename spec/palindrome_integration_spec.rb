require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('it tests palindromes',{:type => :feature}) do
  it "it returns whether a sentence is a palindrome" do
    visit('/')
    fill_in('input',:with => "do geese see god")
    click_button('Submit')
    expect(page).to have_content("Yes")
  end
  it "it returns whether a sentence is a palindrome" do
    visit('/')
    fill_in('input',:with => "do cats see god")
    click_button('Submit')
    expect(page).to have_content("Too")
  end
end
