require 'addressable'
require 'support/shared_examples'

RSpec.describe Addressable do
  it_behaves_like 'parser', Addressable::URI

  it 'parses the scheme' do
    expect(Addressable::URI.parse('https://a.com/').scheme).to eq 'https'
  end

  it 'parses the path' do
    expect(Addressable::URI.parse('http://a.com/foo').path).to eq '/foo'
  end
end