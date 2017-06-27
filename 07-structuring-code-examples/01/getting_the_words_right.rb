### describe
RSpec.describe 'My awesome gardening API' do

end

RSpec.describe Perennials::Rhubarb do

end

RSpec.describe Perennials do

end

RSpec.describe my_favorite_broccoli do

end

RSpec.describe Garden, 'in winter' do

end

RSpec.describe WeatherStation, 'radar updates', uses_network do

end

### it
RSpec.describe Sprinkler do
  it 'waters the garden', uses_serial_bus: true
end


### context instead of it
RSpec.describe 'A kettle of water' do
  # describe 'when boiling' do
  context 'when boiling' do
    it 'can make tea'
    it 'can make coffee'
  end
end

RSpec.describe PhoneNumberParser, 'parses phone numbers' do
# it 'in xxx-xxx-xxxx form'
# it 'in (xxx) xxx-xxxx form'
  example 'in xxx-xxx-xxxx form'
  example 'in (xxx) xxx-xxxx form'
end

### specify instead of it
RSpec.describe 'Deprecations' do
  specify 'MyGem.config is deprecated in favor of MyGem.configure'
  specify 'MyGem.run is deprecated in favor of MyGem.start'
end