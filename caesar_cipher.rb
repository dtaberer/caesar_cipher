# frozen_string_literal: true

# ODIN project
class CaesarCipher
  ARGUMENT_ERROR_MSG = 'Only valid integers are accepted!'

  def initialize(rotate_factor)
    self.rotate_factor = Integer(rotate_factor)
  rescue ArgumentError
    raise ArgumentError, ARGUMENT_ERROR_MSG
  end

  def rotate_factor=(rotate_factor)
    @rotate_factor = Integer(rotate_factor)
    @lookup = mapify
  rescue ArgumentError
    puts ARGUMENT_ERROR_MSG
  end

  def cipher(phrase, rotate_factor = nil)
    self.rotate_factor = rotate_factor if rotate_factor
    cipher_decipher phrase
  end

  def decipher(phrase, rotate_factor = nil)
    self.rotate_factor = rotate_factor if rotate_factor
    cipher_decipher phrase, @lookup.invert
  end

  private

  def cipher_decipher(phrase, lookup = @lookup)
    puts "Using rotate factor of #{@rotate_factor}"
    phrase.split('').map { |c| lookup.fetch(c, c) }.join
  end

  def mapify
    rotate(Array('a'..'z'))
      .merge(rotate(Array('A'..'Z')))
  end

  def rotate(items)
    items.zip(items.rotate(@rotate_factor)).to_h
  end
end
