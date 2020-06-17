# frozen_string_literal: true

require 'spec_helper'

CIPHER = [('a'..'f').to_a, ('g'..'l').to_a, ('m'..'r').to_a, ('s'..'x').to_a,
          %w[y z] + (0..3).to_a, (4..9).to_a].freeze

describe PolybiusSquare do
  it 'initialize matrix' do
    square = PolybiusSquare.new

    expect(square.cipher).to eq(CIPHER)
  end

  it 'encrypt polibio' do
  end

  it 'decrypt 34332623122333' do
  end

  it 'encrypt 1 anel para todos governar' do
  end

  it 'decrypt 5411321526341136111142331433412133441536321136' do
  end

  it 'encrypt Ada Lovelance foi a primeira programadora em 1842' do
  end

  it 'decrypt 11141126334415261113151633231134362331152336113436332136113'\
     '11114333611153154656155' do
  end
end
