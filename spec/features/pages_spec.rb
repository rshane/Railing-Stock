require 'rails_helper'

describe 'unauthenticated pages' do
  context 'index' do
    it 'says "hello world"' do
      visit '/index'
      expect(page.text).to include "Hello World"
    end

    it 'provides the date and time' do
      visit '/index'
      expect(page.text).to match /The current time is [0-9]{2}:[0-9]{2}[ap]m./
    end

    it 'prints 5 new paragraphs' do
      visit '/index'
      expect(page).to have_text 'This is a new paragraph! Number 1'
      expect(page).to have_text 'This is a new paragraph! Number 2'
      expect(page).to have_text 'This is a new paragraph! Number 3'
      expect(page).to have_text 'This is a new paragraph! Number 4'
      expect(page).to have_text 'This is a new paragraph! Number 5'
    end
  end
end
