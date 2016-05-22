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

    it 'Features an image of Sophie' do
      pending "Go for it Bobby" 
      visit '/index'
      expect(page.html).to match %r(<img src="/assets/sophie.*\.jpg" [^>]*>)
    end
  end

  context 'about us' do
    it 'is a page available from /about' do
      pending 'Have fun making a new page'
      expect { visit '/about' }.to_not raise_error
    end

    it 'has short bios for Bobby and Katy' do
      pending 'Hahaha I said Bobby drools'
      visit '/about'
      expect(page).to have_text 'Katy rules'
      expect(page).to have_text 'Bobby drools'
    end
  end
end
