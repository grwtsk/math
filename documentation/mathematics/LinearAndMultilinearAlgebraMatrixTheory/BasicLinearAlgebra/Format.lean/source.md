# Format — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a89f413e9d005fcc5709edbc6e42eccb1a93c05` · SHA-256 `b3c2ae23632c55ad930ddfd1f953f19805ab8e48490aab2b68146e914c0750c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BooleanMatrix.Matrix.Core

/-!
# BooleanMatrix formats

A format is a validity predicate over the common BooleanMatrix carrier.
-/

namespace BooleanMatrix

/--
A format identifies the matrices considered valid under one interpretation.
-/
structure Format where
  Valid : Matrix → Prop

namespace Format

/-- The unrestricted format accepts every matrix. -/
def any : Format where
  Valid := fun _ => True

/-- A format containing exactly one matrix. -/
def exact (expected : Matrix) : Format where
  Valid := fun matrix => matrix = expected

/-- Conjunction of two matrix formats. -/
def intersection
    (left right : Format) :
    Format where
  Valid := fun matrix =>
    left.Valid matrix ∧ right.Valid matrix

end Format
end BooleanMatrix
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ef41e7fc2da567318b1f81219ba3fdacbe46fa068f2aca1cabbf745ee23afeb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Format/Variantb3c2ae23632c55ad930ddfd1f953f19805ab8e48490aab2b68146e914c0750c9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
