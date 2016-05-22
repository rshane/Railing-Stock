require 'rails_helper'

describe 'root route' do
  it 'routes to the index' do
    expect(get: '/').to route_to 'pages#index'
  end
end
