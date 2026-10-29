# Construction — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `217899c9023a9306a03cb6c01251e5393a08d30b` · SHA-256 `3fb53e682290dacbb45f1d87a66717b7725672c4866dc0dab3281e20e242854c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Geometry.Congruence
import Mathematics.Geometry.Order

/-!
# Construction channel

Each constructor has one fixed geometric specification.  There is no generic
caller-selected predicate whose witness could be mistaken for authority.
-/

namespace Mathematics.Geometry

universe u

/-- Exact copying of a supplied segment from a supplied starting point. -/
structure SegmentCopyConstructor
    (Point : Type u)
    (congruence : CongruenceSignature Point) where
  endpoint : Point → Segment Point → Point
  copiedSegmentCongruent :
    ∀ origin model,
      congruence.segmentCongruent
        ⟨origin, endpoint origin model⟩
        model

/-- Exact construction data for an equilateral triangle on a base segment. -/
structure EquilateralTriangleConstructor
    (Point : Type u)
    (congruence : CongruenceSignature Point) where
  apex : Segment Point → Point
  firstSideCongruent :
    ∀ base,
      congruence.segmentCongruent
        base
        ⟨base.start, apex base⟩
  secondSideCongruent :
    ∀ base,
      congruence.segmentCongruent
        base
        ⟨base.finish, apex base⟩

/-- Exact bisection data, with order and congruence obligations kept visible. -/
structure SegmentBisectionConstructor
    (Point : Type u)
    (order : OrderSignature Point)
    (congruence : CongruenceSignature Point) where
  midpoint : Segment Point → Point
  midpointBetween :
    ∀ segment,
      order.between
        segment.start
        (midpoint segment)
        segment.finish
  halvesCongruent :
    ∀ segment,
      congruence.segmentCongruent
        ⟨segment.start, midpoint segment⟩
        ⟨midpoint segment, segment.finish⟩

end Mathematics.Geometry
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c0e63df869f0e9ca0d3f656ed5304fb8ac57d7f0b2d931803cb18688e5712064 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Construction/Variant3fb53e682290dacbb45f1d87a66717b7725672c4866dc0dab3281e20e242854c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
