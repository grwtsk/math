# Core Empty — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `50575270aa6d1624de518c7d35e156ef098599eb` · SHA-256 `8e457ae93b872fb8d8a46389ab0d2d6ee6c6b439146eca88e55d5b434fc42164`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std

/-!
# BooleanMatrix carrier

The universal carrier is a Boolean matrix indexed by two natural numbers.
-/

namespace BooleanMatrix

/--
The universal Boolean-matrix carrier.

Both dimensions are countably infinite. Finite matrices, streams, chains,
programs, state, data, and metadata can be represented by choosing suitable
regions and encodings.
-/
abbrev Matrix :=
  Nat → Nat → Bool

namespace Matrix

/-- Two matrices are equal when every entry is equal. -/
theorem ext
    {left right : Matrix}
    (h : ∀ row column, left row column = right row column) :
    left = right := by
  funext row column
  exact h row column

/-- The matrix containing `false` at every coordinate. -/
def empty : Matrix :=
  fun _ _ => false

@[simp]
theorem empty_apply (row column : Nat) :
    empty row column = false :=
  rfl

end Matrix

end BooleanMatrix
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8939c6035407da34ca2bdca2e0bbce675656b8c9e277435998c493648bcc773 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Core/Variant8e457ae93b872fb8d8a46389ab0d2d6ee6c6b439146eca88e55d5b434fc42164.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
