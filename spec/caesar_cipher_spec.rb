require 'spec_helper'
require_relative '../caesar_cipher'

describe CaesarCipher do
  subject { CaesarCipher.new(1) }

  describe '#cipher' do
           
    it "should return 'BCD' when we call the cipher method with 'ABC'" do 
      result = subject.cipher('ABC')
      expect(result).to eq "BCD"
    end
  
    it "should return 'def' when we call the cipher method with 'cde'" do 
      result = subject.cipher('cde')
      expect(result).to eq "def"
    end

    it "should return 'def g!' when we call the cipher method with 'cde f!'" do 
      result = subject.cipher('cde f!')
      expect(result).to eq "def g!"
    end

    it "should return 'aaa' when we call the cipher method with 'zzz'" do 
      result = subject.cipher('zzz')
      expect(result).to eq "aaa"
    end
  
    it "should return 'Acb' when we call the cipher method with 'Zab'" do 
      result = subject.cipher('Zab')
      expect(result).to eq "Abc"
    end
  end

  describe '#decipher' do

    it "should return 'ABC' when we call the decipher method with 'BCD'" do  
      result = subject.decipher('BCD')
      expect(result).to eq "ABC"
    end
  
    it "should return 'cde' when we call the decipher method with 'def'" do 
      result = subject.decipher('def')
      expect(result).to eq "cde"
    end

    it "should return 'cde f!' when we call the decipher method with 'def g!'" do 
      result = subject.decipher('def g!')
      expect(result).to eq "cde f!"
    end

    it "should return 'zzz' when we call the decipher method with 'aaa'" do 
      result = subject.decipher('aaa')
      expect(result).to eq "zzz"
    end
  
    it "should return 'Zab' when we call the cipher method with 'Abc'" do 
      result = subject.decipher('Abc')
      expect(result).to eq "Zab"
    end
  end
end
