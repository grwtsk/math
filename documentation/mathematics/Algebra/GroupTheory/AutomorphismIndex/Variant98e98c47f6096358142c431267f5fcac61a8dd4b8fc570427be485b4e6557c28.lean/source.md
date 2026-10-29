# Complete source: GRWTSK.Algebra.GroupTheory.AutomorphismIndex.Variant98e98c47f6096358142c431267f5fcac61a8dd4b8fc570427be485b4e6557c28

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cafa7ac9f8348b4afa277e36773164dd6d5ca56a` · SHA-256 `98e98c47f6096358142c431267f5fcac61a8dd4b8fc570427be485b4e6557c28`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.BinaryFrontier.Symmetry.Canonical
import Mathematics.StratifiedBoundary.Frontier.OrdinalIndex

/-!
# Automorphism-orbit frontier indices

Finite-orbit canonicalization is reused from `BinaryFrontier`.  The ordinal
wrapper remains constant on each orbit and complete for orbit identity.
-/

namespace Mathematics.StratifiedBoundary.Frontier

open Mathematics.BinaryFrontier.Symmetry
open Mathematics.StratifiedBoundary.OrdinalTally

universe uGroup uFrontier

variable
  (GroupCarrier : Type uGroup)
  (Frontier : Type uFrontier)
  [Group GroupCarrier]
  [Fintype GroupCarrier]
  [DecidableEq GroupCarrier]
  [MulAction GroupCarrier Frontier]
  [DecidableEq Frontier]
  [LinearOrder Frontier]

def orbitIndexCode
    {limits : LimitSemantics}
    (index :
      StratifiedFrontierIndex limits Frontier)
    (frontier : Frontier) :
    StratifiedFrontierCode :=
  index.code
    (canon GroupCarrier Frontier frontier)

theorem orbitIndexCode_invariant
    {limits : LimitSemantics}
    (index :
      StratifiedFrontierIndex limits Frontier)
    (automorphism : GroupCarrier)
    (frontier : Frontier) :
    orbitIndexCode
        GroupCarrier Frontier index
        (automorphism • frontier) =
      orbitIndexCode
        GroupCarrier Frontier index frontier := by
  simp [orbitIndexCode,
    canon_smul GroupCarrier Frontier]

theorem orbitIndexCode_eq_iff_sameOrbit
    {limits : LimitSemantics}
    (index :
      StratifiedFrontierIndex limits Frontier)
    (left right : Frontier) :
    orbitIndexCode
        GroupCarrier Frontier index left =
        orbitIndexCode
          GroupCarrier Frontier index right ↔
      ∃ automorphism : GroupCarrier,
        automorphism • left = right := by
  constructor
  · intro sameCode
    have sameCanonical :
        canon GroupCarrier Frontier left =
          canon GroupCarrier Frontier right :=
      index.stratified_frontier_index_injective
        sameCode
    exact
      (canon_eq_iff_same_orbit
        GroupCarrier Frontier left right).mp
        sameCanonical
  · rintro ⟨automorphism, transformed⟩
    calc
      orbitIndexCode
          GroupCarrier Frontier index left =
        orbitIndexCode
          GroupCarrier Frontier index
          (automorphism • left) :=
            (orbitIndexCode_invariant
              GroupCarrier Frontier index
              automorphism left).symm
      _ =
        orbitIndexCode
          GroupCarrier Frontier index right := by
            rw [transformed]

end Mathematics.StratifiedBoundary.Frontier
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d73757b7f746ed6fe5bd945dbbb9a601867913886c6ab78af9ce19f9849f9c2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/AutomorphismIndex/Variant98e98c47f6096358142c431267f5fcac61a8dd4b8fc570427be485b4e6557c28.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
