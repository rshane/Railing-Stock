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
  end
end
