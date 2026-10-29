# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OrientationEquivariance.Variant1380eac8f130e73ecd5d4e3b80e4763c76f54399d81c643297cf48e48363a62b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f761133e03ab7f9d61b6e3d408c67f4dbc497e6` · SHA-256 `1380eac8f130e73ecd5d4e3b80e4763c76f54399d81c643297cf48e48363a62b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.BinaryFrontier.PartialBitfield.Order

/-!
# Display orientation

Orientation changes user-facing order, never the raw refinement path or the
meaning of zero and one.
-/

namespace Mathematics.BinaryFrontier

inductive LocalOrientation
  | zeroThenOne
  | oneThenZero
  deriving DecidableEq, Repr

def orientBit : LocalOrientation → Bool → Bool
  | .zeroThenOne, value => value
  | .oneThenZero, value => !value

def orientPath
    (orientations : List LocalOrientation)
    (rawPath : List Bool) : List Bool :=
  List.zipWith orientBit orientations rawPath

theorem zeroThenOne_preserves_bit
    (value : Bool) :
    orientBit .zeroThenOne value = value :=
  rfl

theorem oneThenZero_is_involutive
    (value : Bool) :
    orientBit .oneThenZero
        (orientBit .oneThenZero value) =
      value := by
  cases value <;> rfl

end Mathematics.BinaryFrontier
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d6fc0e3b4b828398e4bd8919e2fe6ade280f95b90ab110b74d24a8619a34081 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientationEquivariance/Variant1380eac8f130e73ecd5d4e3b80e4763c76f54399d81c643297cf48e48363a62b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
