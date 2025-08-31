//// Bit arrays represent a sequence of 0s and 1s and are convenient syntax for constructing and manipulating binary data.
//// Each segment of a bit array can be given options to specify the representation used for that segment...
//// - size: the size of the segment in bits.
//// - unit: the number of bits that the size value is a multiple of.
//// - bits: a nested bit array of any size.
//// - bytes: a nested byte-aligned bit array.
//// - float: a 64-bit floating point number.
//// - int: an int with default size of 8 bits.
//// - big: big endian.
//// - little: little endian.
//// - native: the endianness of the processor.
//// - utf8: utf8 encoded text.
//// - utf16: utf16 encoded text.
//// - utf32: utf32 encoded text.
//// - utf8_codepoint: a utf8 codepoint.
//// - utf16_codepoint: a utf16 codepoint.
//// - utf32_codepoint: a utf32 codepoint.
//// - signed: a signed number.
//// - unsigned: an unsigned number. 
//// 
//// Multiple options can be given to a segment by separating each with a dash, for example: "x:unsigned-little-size(2)".
//// Bit arrays have limited support when compiling to JS, so not all options can be used; this will be implemented in the future.
//// See Erlang bit syntax for more info.

// import gleam/io

pub fn main() {
  // io.println("Hello from data_types_bit_arrays!")

  // 8-bit int. In binary: 00000011
  echo <<3>>
  echo <<3>> == <<3:size(8)>>

  // 16-bit int. In binary: 0001100000000011
  echo <<6147:size(16)>>

  // A bit array of UTF8 data
  echo <<"Hello, Joe!":utf8>>

  // concatentation
  let first = <<4>>
  let second = <<2>>

  echo <<first:bits, second:bits>>
}
