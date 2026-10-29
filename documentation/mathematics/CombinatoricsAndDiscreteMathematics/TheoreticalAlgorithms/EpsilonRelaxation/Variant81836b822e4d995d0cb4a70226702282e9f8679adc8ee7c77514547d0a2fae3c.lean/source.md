# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EpsilonRelaxation.Variant81836b822e4d995d0cb4a70226702282e9f8679adc8ee7c77514547d0a2fae3c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2490a9c71aa9671b87c31c40edf590f5112fc83e` · SHA-256 `81836b822e4d995d0cb4a70226702282e9f8679adc8ee7c77514547d0a2fae3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Stream.Core

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure FiniteEpsilon where
  numerator : Nat
  denominator : Nat
  denominatorPositive : denominator > 0
  numeratorBounded : numerator ≤ denominator
  claimBoundary : List String

structure FiniteRelaxedValue where
  numerator : Nat
  denominator : Nat
  denominatorPositive : denominator > 0
  claimBoundary : List String

inductive PolarBaseBit where
  | paddedOne
  | paddedZero
deriving DecidableEq, Repr

def relaxedValueOfBase
    (eps : FiniteEpsilon)
    (b : PolarBaseBit) :
    FiniteRelaxedValue :=
  match b with
  | .paddedOne =>
      {
        numerator := eps.numerator
        denominator := eps.denominator
        denominatorPositive := eps.denominatorPositive
        claimBoundary := [
          "The padded-one base relaxes to finite epsilon.",
          "This is a finite descriptor, not a real-valued analytic limit."
        ]
      }
  | .paddedZero =>
      {
        numerator := eps.denominator - eps.numerator
        denominator := eps.denominator
        denominatorPositive := eps.denominatorPositive
        claimBoundary := [
          "The padded-zero base relaxes to one-minus-epsilon.",
          "This is a finite descriptor, not a real-valued analytic limit."
        ]
      }

theorem relaxedValue_denominator_positive
    (eps : FiniteEpsilon)
    (b : PolarBaseBit) :
    (relaxedValueOfBase eps b).denominator > 0 :=
  (relaxedValueOfBase eps b).denominatorPositive

end Stream
end BinaryLogicMatrix
end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d37dbc08cedb9279e66626c0160479196b5675021cc72a459d619cafd2640241 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonRelaxation/Variant81836b822e4d995d0cb4a70226702282e9f8679adc8ee7c77514547d0a2fae3c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
