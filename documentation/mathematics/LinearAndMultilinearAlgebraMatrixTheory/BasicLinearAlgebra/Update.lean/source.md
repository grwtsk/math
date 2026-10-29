# Update — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `544a1217b522557a4077ac6f459f24de6ef43606` · SHA-256 `1f9358c5c3851fc9073cbabc05cd7edb3f41ab2a77b88ac96e28c8a1eaeb97cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BooleanMatrix.Matrix.Core

/-!
# Local BooleanMatrix updates
-/

namespace BooleanMatrix
namespace Matrix

/-- Replace one matrix entry. -/
def set
    (matrix : Matrix)
    (targetRow targetColumn : Nat)
    (value : Bool) :
    Matrix :=
  fun row column =>
    if row = targetRow ∧ column = targetColumn then
      value
    else
      matrix row column

@[simp]
theorem set_target
    (matrix : Matrix)
    (row column : Nat)
    (value : Bool) :
    set matrix row column value row column = value := by
  simp [set]

theorem set_other
    (matrix : Matrix)
    (targetRow targetColumn row column : Nat)
    (value : Bool)
    (different :
      row ≠ targetRow ∨ column ≠ targetColumn) :
    set matrix targetRow targetColumn value row column =
      matrix row column := by
  unfold set
  split
  · rename_i equal
    exact False.elim <|
      different.elim
        (fun hrow => hrow equal.1)
        (fun hcolumn => hcolumn equal.2)
  · rfl

end Matrix
end BooleanMatrix
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f51e4fce70b47e0231eea6fe80ef74a83a90360eb3196abc989d493828671237 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Update/Variant1f9358c5c3851fc9073cbabc05cd7edb3f41ab2a77b88ac96e28c8a1eaeb97cd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
