require 'rails_helper'

describe Guest do
  let(:valid_guest) { Guest.create(first_name:'Jorge', last_name:'Contreras', email: 'jorge@jorge.com')}
  let(:invalid_guest) { Guest.create(first_name:'Jorge', email: 'jorge@jorge.com')}

  describe 'Creates a new user' do
    context 'Valid user' do
      it 'creates a new user succesfully' do
        expect(Guest.first).to eq valid_guest
      end
    end
    context 'invalid user' do
      it 'does not create a new user' do
        expect(invalid_guest.valid?).to eq false
      end
    end
  end
end
