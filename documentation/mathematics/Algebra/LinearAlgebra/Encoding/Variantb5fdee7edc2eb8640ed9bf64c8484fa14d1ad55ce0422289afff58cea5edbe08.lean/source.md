# Complete source: GRWTSK.Algebra.LinearAlgebra.Encoding.Variantb5fdee7edc2eb8640ed9bf64c8484fa14d1ad55ce0422289afff58cea5edbe08

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c3a2ba8d883551ed3d6a32c6bb62ec92e4fa814` · SHA-256 `b5fdee7edc2eb8640ed9bf64c8484fa14d1ad55ce0422289afff58cea5edbe08`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Matrix

namespace Boolean

namespace Matrix

/-- Row-major list of all entries. -/
def rowMajorBits
    (A : Matrix rows cols) :
    List Bool :=
  (List.finRange rows).flatMap fun i =>
    (List.finRange cols).map fun j => A i j

/-- Coordinates of true entries. -/
def support
    (A : Matrix rows cols) :
    List (Fin rows × Fin cols) :=
  (List.finRange rows).flatMap fun i =>
    (List.finRange cols).filterMap fun j =>
      if A i j then some (i, j) else none

/--
Build a matrix from row-major bits, padding absent entries by `false`.

This is a finite combinatorial decoder, not a proof-authority bridge.
-/
def fromBoolList
    (rows cols : Nat)
    (bits : List Bool) :
    Matrix rows cols :=
  fun i j => bits.getD (i.val * cols + j.val) false

theorem rowMajor_length_visible
    (A : Matrix rows cols) :
    (rowMajorBits A).length = (rowMajorBits A).length :=
  rfl

end Matrix

end Boolean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=621fcacfbd1324347900252a142c7201896900c239519d0f6b4ee2d15fa4bc53 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Encoding/Variantb5fdee7edc2eb8640ed9bf64c8484fa14d1ad55ce0422289afff58cea5edbe08.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
