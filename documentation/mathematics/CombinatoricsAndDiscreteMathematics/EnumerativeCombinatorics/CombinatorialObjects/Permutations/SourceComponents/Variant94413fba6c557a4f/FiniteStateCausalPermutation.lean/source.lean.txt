/-
FiniteStateCausalPermutation — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 94413fba6c557a4f85eba4ddd517e9cf96c574d3d846124f32c2a67ccc04f722
Organized SHA-256: 48bfb722aa153d51cf840bfda5bd7c918b4b9c62ee58d54457406d42a4c0fd3c
PMD: 510.7.010.030.010 permutations (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Finite-state specializations via actual permutation order and complete stable source exports. No general infinite-state theorem. Exact original namespaces and imports remain; no added containing namespace or open binding. Only declared same-source public companions are added. Source documentation may describe archived components. Provider resolution, namespace coimport compatibility and elaboration are unreplayed. -/

import DAF.Causal.CausalState
import Mathlib.GroupTheory.OrderOfElement
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.SourceComponents.Variant94413fba6c557a4f.BilateralQuotientPermutation
import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.SourceComponents.Variant94413fba6c557a4f.PositiveOrderCausalEquivalence

/-!
# Reversible and bilateral causal state

For a reversible autonomous system, bilateral equivalence compares every
observation both along forward iterates and along iterates of the inverse.
This makes the descended transition an actual permutation of the quotient.

Forward and bilateral equivalence coincide when a **positive** power of the
global permutation is the identity.  Positivity is essential: the equation
`H ^ 0 = 1` is tautological and gives no finite-order information.  Finite
state spaces supply a positive exponent through `orderOf H`.  On arbitrary
infinite state spaces a forward causal quotient need not be reversible.
-/

namespace ReversibleCausal

universe uS uR uO

namespace ReversibleSystem

variable {State : Type uS} {Resolution : Type uR}

/-- Every permutation of a finite state type has forward = bilateral kernel. -/
theorem forward_eq_bilateral_of_finite
    (G : ReversibleSystem State Resolution)
    [Finite State] :
    G.ForwardCausalEquivalent = G.BilateralCausalEquivalent :=
  G.forward_eq_bilateral_of_pow_eq_one
    (orderOf_pos G.step)
    (pow_orderOf_eq_one G.step)

/-- Finite state spaces canonically identify forward and bilateral quotients. -/
noncomputable def forwardCausalStateEquivBilateralOfFinite
    (G : ReversibleSystem State Resolution)
    [Finite State] :
    G.ForwardCausalState ≃ G.BilateralCausalState :=
  G.forwardCausalStateEquivBilateralOfPowEqOne
    (orderOf_pos G.step)
    (pow_orderOf_eq_one G.step)

/-- A finite forward causal quotient inherits the reversible transition. -/
noncomputable def forwardStepPermOfFinite
    (G : ReversibleSystem State Resolution)
    [Finite State] :
    Equiv.Perm G.ForwardCausalState :=
  G.forwardStepPermOfPowEqOne
    (orderOf_pos G.step)
    (pow_orderOf_eq_one G.step)

@[simp]
theorem forwardStepPermOfFinite_mk
    (G : ReversibleSystem State Resolution)
    [Finite State]
    (x : State) :
    G.forwardStepPermOfFinite (Quotient.mk G.forwardSetoid x) =
      Quotient.mk G.forwardSetoid (G.step x) := by
  apply G.forwardStepPermOfPowEqOne_mk

end ReversibleSystem

-- Stable names requested by the public API.
export ReversibleSystem
  (BilateralCausalState
   bilateralStepPerm
   bilateralObserve
   forward_eq_bilateral_of_pow_eq_one
   forwardCausalStateEquivBilateralOfPowEqOne
   forwardStepPermOfPowEqOne
   forwardCausalStateEquivBilateralOfFinite
   forwardStepPermOfFinite)

end ReversibleCausal
