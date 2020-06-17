# frozen_string_literal: true

class PolybiusSquare
  DECRYPTION_CIPHER = [('a'..'f').to_a, ('g'..'l').to_a, ('m'..'r').to_a,
                       ('s'..'x').to_a, %w[y z] + ('0'..'3').to_a,
                       ('4'..'9').to_a].freeze
  ENCRYPTION_CIPHER = DECRYPTION_CIPHER.flatten.freeze

  attr_reader :cipher

  def initialize
    @cipher = DECRYPTION_CIPHER
  end

  def encrypt(message)
    message.downcase.gsub(' ', '').split('').map do |letter|
      ENCRYPTION_CIPHER.find_index(letter) + 1
    end.map do |number|
      row, column = number.divmod(6)
      next "#{row}6" if column.zero?

      "#{row + 1}#{column}"
    end.join('')
  end

  def decrypt(message)
    message.scan(/.{1,2}/).map do |duplet|
      row, column = duplet.split('').map(&:to_i)
      DECRYPTION_CIPHER[row - 1][column - 1]
    end.join('')
  end
end
