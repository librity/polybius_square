# frozen_string_literal: true

require 'spec_helper'

CIPHER = [('a'..'f').to_a, ('g'..'l').to_a, ('m'..'r').to_a,
          ('s'..'x').to_a, %w[y z] + ('0'..'3').to_a,
          ('4'..'9').to_a].freeze

describe PolybiusSquare do
  it 'initialize matrix' do
    square = PolybiusSquare.new

    expect(square.cipher).to eq(CIPHER)
  end

  it 'encrypt polibio' do
    encrypted = PolybiusSquare.new.encrypt('polibio')

    expect(encrypted).to eq('34332623122333')
  end

  it 'decrypt 34332623122333' do
    decrypted = PolybiusSquare.new.decrypt('34332623122333')

    expect(decrypted).to eq('polibio')
  end

  it 'encrypt 1 anel para todos governar' do
    encrypted = PolybiusSquare.new.encrypt('1 anel para todos governar')

    expect(encrypted).to eq('54113215263411361142331433412133441536321136')
  end

  it 'decrypt 54113215263411361142331433412133441536321136' do
    decrypted = PolybiusSquare.new.decrypt('54113215263411361142331433412133441536321136')

    expect(decrypted).to eq('1anelparatodosgovernar')
  end

  it 'encrypt Ada Lovelace foi a primeira programadora em 1842' do
    encrypted = PolybiusSquare.new.encrypt('Ada Lovelace foi a primeira programadora em 1842')

    expect(encrypted).to eq('11141126334415261113151633231134362331152336113436332136113'\
    '11114333611153154656155')
  end

  it 'decrypt 11141126334415261113151633231134362331152336113436332136113'\
     '11114333611153154656155' do
    decrypted = PolybiusSquare.new.decrypt('111411263344152611131516332311343'\
      '6233115233611343633213611311114333611153154656155')

    expect(decrypted).to eq('adalovelacefoiaprimeiraprogramadoraem1842')
  end
end
