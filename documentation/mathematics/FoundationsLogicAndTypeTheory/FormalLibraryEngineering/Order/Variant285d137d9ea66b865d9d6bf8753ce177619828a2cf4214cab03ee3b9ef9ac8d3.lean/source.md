# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Order.Variant285d137d9ea66b865d9d6bf8753ce177619828a2cf4214cab03ee3b9ef9ac8d3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae1a5aa0ae3e49a8dbd0fdec2b094373a9a11766` · SHA-256 `285d137d9ea66b865d9d6bf8753ce177619828a2cf4214cab03ee3b9ef9ac8d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Geometry.Primitive

/-!
# Order channel

Betweenness is independent of incidence and congruence.  Its candidate laws
are named propositions rather than hidden fields.
-/

namespace Mathematics.Geometry

universe u

/-- Bare strict-betweenness data. -/
structure OrderSignature (Point : Type u) where
  between : Point → Point → Point → Prop

/-- Reversing the endpoints preserves betweenness. -/
def BetweennessEndpointSymmetry
    {Point : Type u}
    (order : OrderSignature Point) : Prop :=
  ∀ first middle last,
    order.between first middle last →
      order.between last middle first

/-- A strict interior point differs from both endpoints. -/
def BetweennessStrict
    {Point : Type u}
    (order : OrderSignature Point) : Prop :=
  ∀ first middle last,
    order.between first middle last →
      middle ≠ first ∧ middle ≠ last

/-- Betweenness excludes the reverse ordering of the first two points. -/
def BetweennessAsymmetric
    {Point : Type u}
    (order : OrderSignature Point) : Prop :=
  ∀ first middle last,
    order.between first middle last →
      ¬ order.between middle first last

end Mathematics.Geometry
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e269b9b458e1afa4ccd70ec177e5b33039ed0eeeb81b5e8ce342b8b37d5e5624 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant285d137d9ea66b865d9d6bf8753ce177619828a2cf4214cab03ee3b9ef9ac8d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
