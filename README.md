# caesar_cipher
In cryptography, a Caesar cipher, also known as Caesar’s cipher, the shift cipher, Caesar’s code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence.

Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

  > caesar_cipher("What a string!", 5)
  => "Bmfy f xywnsl!"
Quick Tips:

You will need to remember how to convert a string into a number.
Don’t forget to wrap from z to a.
Don’t forget to keep the same case.


$ rubocop caesar_cipher.rb
Inspecting 1 file
.

1 file inspected, no offenses detected


$ rspec -f d spec/

CaesarCipher
  #cipher
Using rotate factor of 1

    should return 'BCD' when we call the cipher method with 'ABC'
Using rotate factor of 1
    should return 'def' when we call the cipher method with 'cde'
Using rotate factor of 1
    should return 'def g!' when we call the cipher method with 'cde f!'
Using rotate factor of 1
    should return 'aaa' when we call the cipher method with 'zzz'
Using rotate factor of 1
    should return 'Acb' when we call the cipher method with 'Zab'
  #decipher
Using rotate factor of 1
    should return 'ABC' when we call the decipher method with 'BCD'
Using rotate factor of 1
    should return 'cde' when we call the decipher method with 'def'
Using rotate factor of 1
    should return 'cde f!' when we call the decipher method with 'def g!'
Using rotate factor of 1
    should return 'zzz' when we call the decipher method with 'aaa'
Using rotate factor of 1
    should return 'Zab' when we call the cipher method with 'Abc'

Finished in 0.00263 seconds (files took 0.10277 seconds to load)
10 examples, 0 failures
