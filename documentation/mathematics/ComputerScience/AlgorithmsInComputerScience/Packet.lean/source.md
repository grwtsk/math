# Packet — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45d8db3db2143a051e4ebb350a0290bf11d96102` · SHA-256 `6b5196d77f6e23e8bb5f330976771813179ba9dba372bb48a85cc0eb81c75675`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import NoeoueueHodgeGate.Variant

namespace NoeoueueHodgeGate

structure Digest where
  bytes : List UInt8
  lengthCorrect : bytes.length = 32

structure Rational where
  numerator : Int
  denominator : Nat
  denominatorPositive : denominator > 0
  reduced : Nat.Coprime numerator.natAbs denominator

structure ScopePacket where
  variant : Variant
  variety : Digest
  polarization : Digest
  codimension : Nat

structure RationalHodgeClass where
  scope : Digest
  coordinates : List Rational
  hodgeTypePP : Bool

structure AlgebraicCycle where
  scope : Digest
  components : List Digest
  coefficients : List Rational
  sameLength : components.length = coefficients.length

structure CycleClassEquality where
  expected : List Rational
  actual : List Rational
  exact : expected = actual

structure PrefixComparison where
  h1Typed : Bool
  h2NoCollapse : Bool
  h3Natural : Bool
  h4Faithful : Bool

inductive RoutingPort where
  | exact
  | harmonic
  | coexact
  deriving DecidableEq, Repr

inductive RoutingDisposition where
  | admitted
  | tied
  | prefixCrossing
  | groundedResidual
  | unknown
  | invalid
  deriving DecidableEq, Repr

end NoeoueueHodgeGate
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff275acf41685a2f186311b127479c16f2aeac3667d5a282c40e0b246dc163b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Packet/Variant6b5196d77f6e23e8bb5f330976771813179ba9dba372bb48a85cc0eb81c75675.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
