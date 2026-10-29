# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Index.Variant61ddd674c4a185bd8c2369c52e856d523fd19b8d77537cab2b20d474480411f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36946790ba1ed16a7db5b1254826ecd7aea74104` · SHA-256 `61ddd674c4a185bd8c2369c52e856d523fd19b8d77537cab2b20d474480411f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Fintype.BigOperators

/-!
# Finite tensor-network indices

The physical configuration space and the virtual bond profile are distinct.
The basis cardinality is `D ^ N`; the qubit specialization is a separate
theorem rather than a silent replacement of `D` by two.
-/

namespace Mathematics.TensorNetwork

/-- One physical basis configuration for `N` sites of local dimension `D`. -/
abbrev PhysicalConfiguration (N D : Nat) :=
  Fin N → Fin D

/-- The exact number of physical basis configurations. -/
theorem physicalConfiguration_card (N D : Nat) :
    Fintype.card (PhysicalConfiguration N D) = D ^ N := by
  simp [PhysicalConfiguration]

/-- The binary specialization is valid only after fixing local dimension two. -/
theorem qubitConfiguration_card (N : Nat) :
    Fintype.card (PhysicalConfiguration N 2) = 2 ^ N := by
  simp [PhysicalConfiguration]

/-- Open-boundary virtual dimensions, including both one-dimensional ends. -/
structure BondProfile (sites : Nat) where
  dimension : Fin (sites + 1) → Nat
  positive : ∀ index, 0 < dimension index
  leftBoundary :
    dimension ⟨0, Nat.zero_lt_succ sites⟩ = 1
  rightBoundary :
    dimension ⟨sites, Nat.lt_succ_self sites⟩ = 1

/-- A uniform bond bound is additional supplied data. -/
def BondProfile.UniformlyBounded
    {sites : Nat}
    (profile : BondProfile sites)
    (bound : Nat) : Prop :=
  ∀ index, profile.dimension index ≤ bound

/-- Virtual indices for one complete contraction path. -/
abbrev VirtualConfiguration
    {sites : Nat}
    (profile : BondProfile sites) :=
  ∀ index, Fin (profile.dimension index)

end Mathematics.TensorNetwork
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ad2e441c9617b011ae8ec1b90864d3542e43630e36886778a48fba6265ceeca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Index/Variant61ddd674c4a185bd8c2369c52e856d523fd19b8d77537cab2b20d474480411f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
