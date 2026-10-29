# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Congruence.Variant0c190efb895b45e1cc4ef5402d6c94c9e62397708a5ad52e1174ec1349df0a59

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20f78fc67e12a383a98c79984d5d87d915b79e9d` · SHA-256 `0c190efb895b45e1cc4ef5402d6c94c9e62397708a5ad52e1174ec1349df0a59`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Geometry.Primitive

/-!
# Congruence channel

Segment and angle congruence are comparison relations.  Reflexivity,
symmetry, transitivity, and compatibility with other geometric channels are
separate propositions.
-/

namespace Mathematics.Geometry

universe u

/-- Bare segment- and angle-congruence data. -/
structure CongruenceSignature (Point : Type u) where
  segmentCongruent : Segment Point → Segment Point → Prop
  angleCongruent : Angle Point → Angle Point → Prop

def SegmentCongruenceReflexive
    {Point : Type u}
    (congruence : CongruenceSignature Point) : Prop :=
  ∀ segment, congruence.segmentCongruent segment segment

def SegmentCongruenceSymmetric
    {Point : Type u}
    (congruence : CongruenceSignature Point) : Prop :=
  ∀ left right,
    congruence.segmentCongruent left right →
      congruence.segmentCongruent right left

def SegmentCongruenceTransitive
    {Point : Type u}
    (congruence : CongruenceSignature Point) : Prop :=
  ∀ first second third,
    congruence.segmentCongruent first second →
    congruence.segmentCongruent second third →
      congruence.segmentCongruent first third

def AngleCongruenceReflexive
    {Point : Type u}
    (congruence : CongruenceSignature Point) : Prop :=
  ∀ angle, congruence.angleCongruent angle angle

/-- Fixed semantic meaning of an equilateral labeled triangle. -/
def IsEquilateral
    {Point : Type u}
    (congruence : CongruenceSignature Point)
    (triangle : Triangle Point) : Prop :=
  congruence.segmentCongruent
      triangle.firstSecond
      triangle.firstThird ∧
    congruence.segmentCongruent
      triangle.firstSecond
      triangle.secondThird

end Mathematics.Geometry
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=149c8e527e35e31f12422eeb9ef30d01199624245768c29e76fdc946ceaa2066 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Congruence/Variant0c190efb895b45e1cc4ef5402d6c94c9e62397708a5ad52e1174ec1349df0a59.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
