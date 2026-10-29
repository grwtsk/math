# Pointwise — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `069f91454814ce07405c4eabaeeafd0a8a007d3f` · SHA-256 `9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BooleanMatrix.Matrix.Core

/-!
# Pointwise BooleanMatrix operations
-/

namespace BooleanMatrix
namespace Matrix

/-- Apply a Boolean function independently to every entry. -/
def map
    (function : Bool → Bool)
    (matrix : Matrix) :
    Matrix :=
  fun row column => function (matrix row column)

@[simp]
theorem map_apply
    (function : Bool → Bool)
    (matrix : Matrix)
    (row column : Nat) :
    map function matrix row column =
      function (matrix row column) :=
  rfl

/-- Combine two matrices entry by entry. -/
def zipWith
    (function : Bool → Bool → Bool)
    (left right : Matrix) :
    Matrix :=
  fun row column =>
    function (left row column) (right row column)

@[simp]
theorem zipWith_apply
    (function : Bool → Bool → Bool)
    (left right : Matrix)
    (row column : Nat) :
    zipWith function left right row column =
      function (left row column) (right row column) :=
  rfl

/-- Pointwise Boolean negation. -/
def not (matrix : Matrix) : Matrix :=
  map (fun bit => !bit) matrix

/-- Pointwise Boolean exclusive-or. -/
def xor (left right : Matrix) : Matrix :=
  zipWith (fun a b => a != b) left right

end Matrix
end BooleanMatrix
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8fe85da4a9e2887df9e99c6665379a2564668620cdea3a2d652092bbfaf5a41d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Pointwise/Variant9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
