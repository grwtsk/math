# Continuity — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04d9543506fe4230db6c33785eb65ebd912153f2` · SHA-256 `9b7f75fc85f5ee39b4ca2b090820b6d3a5fb8b305e0f7d61f1cf492682b364cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Geometry.Primitive

/-!
# Continuity channel

This signature exposes exactly which sequences are called Cauchy and which
points are proposed as their limits.  Completeness and uniqueness are
separate assumptions; neither follows from incidence or order by definition.
-/

namespace Mathematics.Geometry

universe u

/-- Bare sequential continuity data for a point carrier. -/
structure ContinuitySignature (Point : Type u) where
  cauchy : (Nat → Point) → Prop
  convergesTo : (Nat → Point) → Point → Prop

/-- Every declared Cauchy sequence has a represented limit. -/
def SequentialCompleteness
    {Point : Type u}
    (continuity : ContinuitySignature Point) : Prop :=
  ∀ sequence,
    continuity.cauchy sequence →
      ∃ limit, continuity.convergesTo sequence limit

/-- A represented sequence has at most one declared limit. -/
def SequentialLimitUniqueness
    {Point : Type u}
    (continuity : ContinuitySignature Point) : Prop :=
  ∀ sequence first second,
    continuity.convergesTo sequence first →
    continuity.convergesTo sequence second →
      first = second

end Mathematics.Geometry
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ce61dbfcebfee9400a25c4a2a1e7dff32bac738db01d985ad84d2bedaba5652 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Continuity/Variant9b7f75fc85f5ee39b4ca2b090820b6d3a5fb8b305e0f7d61f1cf492682b364cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
