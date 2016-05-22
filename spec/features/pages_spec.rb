require 'rails_helper'

describe 'unauthenticated pages' do
  context 'index' do
    it 'says "hello world"' do
      visit '/index'
      expect(page.text).to include "Hello World"
    end
  end
end
