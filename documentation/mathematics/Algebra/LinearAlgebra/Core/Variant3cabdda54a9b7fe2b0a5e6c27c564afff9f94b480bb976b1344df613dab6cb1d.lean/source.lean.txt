import BooleanMatrix.Format

/-!
# BooleanMatrix codecs

A codec gives a lossless representation of values in the common matrix
carrier.
-/

namespace BooleanMatrix

universe u

/--
A lossless representation of values inside BooleanMatrix.

Decoding is partial because not every matrix must be a valid encoding.
-/
structure Codec (α : Type u) where
  encode : α → Matrix
  decode : Matrix → Option α
  decode_encode :
    ∀ value,
      decode (encode value) = some value

namespace Codec

variable {α : Type u}

/-- The format consisting exactly of matrices realized by a codec. -/
def format
    (codec : Codec α) :
    Format where
  Valid := fun matrix =>
    ∃ value, codec.encode value = matrix

end Codec
end BooleanMatrix
