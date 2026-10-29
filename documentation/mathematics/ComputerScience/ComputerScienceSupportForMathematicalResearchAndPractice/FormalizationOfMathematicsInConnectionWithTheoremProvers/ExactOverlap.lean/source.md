# Exact Overlap — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e915ce960b88eeea17093eefa4a7d9a8981ca31b` · SHA-256 `11270348a8cfa6dca70a882e2a0d48a3af43056565f6212ae4166a62b31a376f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Projection.IncidenceCode

/-!
# Lossless four-way overlap

Similarity first exposes the complete Boolean decomposition.  Scalar distances
may be derived from this object for search, but cannot create identity,
taxonomic parenthood, or a filesystem route.
-/

namespace Mathematics.Projection

universe u

/-- The four disjoint regions determined by two Boolean coordinates. -/
inductive OverlapRegion
  | common
  | leftResidue
  | rightResidue
  | exterior
  deriving DecidableEq, Repr

def overlapRegion (left right : Bool) : OverlapRegion :=
  match left, right with
  | true, true => .common
  | true, false => .leftResidue
  | false, true => .rightResidue
  | false, false => .exterior

/-- Complete pointwise overlap data. -/
structure ExactOverlap (Probe : Type u) where
  left : IncidenceCode Probe
  right : IncidenceCode Probe

namespace ExactOverlap

variable {Probe : Type u}

def region (overlap : ExactOverlap Probe) (probe : Probe) :
    OverlapRegion :=
  overlapRegion (overlap.left probe) (overlap.right probe)

def common (overlap : ExactOverlap Probe) : IncidenceCode Probe :=
  fun probe ↦ overlap.left probe && overlap.right probe

def leftResidue (overlap : ExactOverlap Probe) : IncidenceCode Probe :=
  fun probe ↦ overlap.left probe && !(overlap.right probe)

def rightResidue (overlap : ExactOverlap Probe) : IncidenceCode Probe :=
  fun probe ↦ !(overlap.left probe) && overlap.right probe

def exterior (overlap : ExactOverlap Probe) : IncidenceCode Probe :=
  fun probe ↦ !(overlap.left probe) && !(overlap.right probe)

theorem region_exhaustive
    (overlap : ExactOverlap Probe) (probe : Probe) :
    overlap.region probe = .common ∨
      overlap.region probe = .leftResidue ∨
      overlap.region probe = .rightResidue ∨
      overlap.region probe = .exterior := by
  cases hleft : overlap.left probe <;>
    cases hright : overlap.right probe <;>
    simp [region, overlapRegion, hleft, hright]

end ExactOverlap

/-- Exact finite Hamming distance, derived only after retaining the overlap. -/
def finiteHamming
    {width : Nat}
    (left right : FiniteIncidenceCode width) : Nat :=
  (BitVec.cpop (BitVec.xor left.bits right.bits)).toNat

end Mathematics.Projection
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8d1e1544f01f47bddf9f5b7b2f96b62001e60132f386fb769247e9cf9bd1721 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExactOverlap/Variant11270348a8cfa6dca70a882e2a0d48a3af43056565f6212ae4166a62b31a376f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
