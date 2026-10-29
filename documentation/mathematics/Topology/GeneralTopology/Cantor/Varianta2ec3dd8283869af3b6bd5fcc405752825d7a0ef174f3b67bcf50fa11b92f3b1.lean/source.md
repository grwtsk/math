# Complete source: GRWTSK.Topology.GeneralTopology.Cantor.Varianta2ec3dd8283869af3b6bd5fcc405752825d7a0ef174f3b67bcf50fa11b92f3b1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76bbdf3c5e00c70a62e0f9faaad9cfad035ed703` · SHA-256 `a2ec3dd8283869af3b6bd5fcc405752825d7a0ef174f3b67bcf50fa11b92f3b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.Carrier.BooleanSpace
import Mathlib.Topology.Connected.TotallyDisconnected
import Mathlib.Topology.Bases
import Mathlib.Topology.Metrizable.Basic

/-!
# Topology capability for designated Cantor representations

No instance is manufactured from a set-theoretic equivalence.  Compactness,
metrizability, perfection, total disconnectedness, and a clopen basis must be
provided for the concrete topology before the project may claim Cantor-space
topology or a homeomorphic baseline interpreter.
-/

namespace BitMatrix.Topology

/-- Explicit topological obligations of a Cantor-space presentation. -/
structure CantorTopologyCapability
    (Space : Type)
    [TopologicalSpace Space] where
  compact : IsCompact (Set.univ : Set Space)
  metrizable : Nonempty (TopologicalSpace.MetrizableSpace Space)
  noIsolatedPoint : ∀ point : Space, ¬IsOpen ({point} : Set Space)
  totallyDisconnected : IsTotallyDisconnected (Set.univ : Set Space)
  clopenBasis : ∃ basis : Set (Set Space),
    TopologicalSpace.IsTopologicalBasis basis ∧
      ∀ member ∈ basis, IsClopen member

/-- Continuity is an additional capability beyond the baseline set equivalence. -/
structure HomeomorphicBaselineCapability
    (Address Scalar : Type)
    [TopologicalSpace Scalar]
    [TopologicalSpace (BitMatrix.Carrier.BooleanState Address)] where
  homeomorphism : Scalar ≃ₜ BitMatrix.Carrier.BooleanState Address

theorem compact_univ
    {Space : Type}
    [TopologicalSpace Space]
    (capability : CantorTopologyCapability Space) :
    IsCompact (Set.univ : Set Space) :=
  capability.compact

theorem connected_subsets_are_singletons
    {Space : Type}
    [TopologicalSpace Space]
    (capability : CantorTopologyCapability Space)
    {subset : Set Space}
    (connected : IsPreconnected subset) :
    subset.Subsingleton := by
  intro left leftMember right rightMember
  exact capability.totallyDisconnected subset
    (Set.subset_univ subset) connected leftMember rightMember

end BitMatrix.Topology
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2192944d460a59804c6fd0e657fabcb948c3b40a15cf0d9db559ed6d590aa303 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Cantor/Varianta2ec3dd8283869af3b6bd5fcc405752825d7a0ef174f3b67bcf50fa11b92f3b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
