require 'rails_helper'

describe Advert do
  it 'create a valid advert' do
    advert = Advert.create do |a|
      a.name = 'Nombre de prueba'
      a.description = 'Este es un mensaje de prueba'
      a.schedule = '9:00pm - 10:00pm'
      a.phone = '3131054480'
    end

    expect(advert).to be_valid
  end
end
