RSpec.shared_examples 'parser' do |parser_class|
  let(:parser) { parser_class }

  it 'parses the host' do
    expect(parser.parse('https://foo.com/').host).to eq 'foo.com'
  end

  it 'parses the port' do
    expect(parser.parse('http://example.com:9876').port).to eq 9876
  end
end