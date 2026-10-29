/-
CompleteLatticeAndExtremalFixedPoints — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: f2c31cae2f7a7af7359fe38737ed993b9fdb4954927a461ec429b5635d09e5ac
Organized SHA-256: 58fdb418afca8ff2285180619ea0bffaba4df4ea31ceeba45cf3726ed7db9ef5
PMD: 510.7.070.020.050 complete lattices (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The complete fixed-point lattice and all four least/greatest fixedness/extremality forwarders retain the original CompleteLattice/order-hom section variables and library proofs. -/

import Mathlib.Order.FixedPoints
import Mathlib.Topology.MetricSpace.Contracting

/-!
# Fixed-point theorem authority bindings

This module gives stable project names to fixed-point results that are already
proved by the exact Mathlib revision pinned in `Surface/lake-manifest.json`.
It is an import adapter, not a project-owned reproof and not an executable
fixed-point solver.  Each declaration below preserves Mathlib's hypotheses and
conclusion; the glossary records the named theorems that have no local binding.
-/

namespace BitMatrix.Topology.FixedPointAuthority

open Filter Function

universe u

section KnasterTarski

variable {α : Type u} [CompleteLattice α] (f : α →o α)

/-- The exact Mathlib complete-lattice structure on the fixed points of a
monotone endomap. -/
abbrev knasterTarskiFixedPointLattice :
    CompleteLattice (Function.fixedPoints f) :=
  fixedPoints.completeLattice f

/-- The least fixed point supplied by Knaster--Tarski is fixed. -/
theorem knasterTarski_least_fixed : IsFixedPt f f.lfp :=
  f.isFixedPt_lfp

/-- The greatest fixed point supplied by Knaster--Tarski is fixed. -/
theorem knasterTarski_greatest_fixed : IsFixedPt f f.gfp :=
  f.isFixedPt_gfp

/-- `lfp` is the least element of the fixed-point set. -/
theorem knasterTarski_least : IsLeast (Function.fixedPoints f) f.lfp :=
  f.isLeast_lfp

/-- `gfp` is the greatest element of the fixed-point set. -/
theorem knasterTarski_greatest : IsGreatest (Function.fixedPoints f) f.gfp :=
  f.isGreatest_gfp

end KnasterTarski
end BitMatrix.Topology.FixedPointAuthority
