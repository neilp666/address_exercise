require 'rspec'

describe 'AddressFormatter' do
  it 'takes in an address as a hash and outputs a formatted string' do
    address_data = {
      'subpremise':     'Apt 6',
      'house_number':  nil,
      'house_name':  '22',
      'street_line_1':        'Bailey Rd',
      'street_line_2':       nil,
      'town_or_city': 'Sale',
      'region': 'Greater Manchester',
      'postcode': 'M33 1AX'
    }

    formatted_address = <<~ADDRESS
      Apt 6
      22 Bailey Rd
      Sale
      Greater Manchester
    ADDRESS

    expect(AddressFormatter.format(address_data)).to eq(formatted_address)
  end
end
