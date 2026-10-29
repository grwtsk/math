# Core Codec — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `169b31eac145b05e7e1d41c6a6cd85b298d3b6a2` · SHA-256 `3cabdda54a9b7fe2b0a5e6c27c564afff9f94b480bb976b1344df613dab6cb1d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=962fbe4de462a8b58ff2bb86fee21b387e84f6b69df0e31a1875a5b3ccbbca57 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Core/Variant3cabdda54a9b7fe2b0a5e6c27c564afff9f94b480bb976b1344df613dab6cb1d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
