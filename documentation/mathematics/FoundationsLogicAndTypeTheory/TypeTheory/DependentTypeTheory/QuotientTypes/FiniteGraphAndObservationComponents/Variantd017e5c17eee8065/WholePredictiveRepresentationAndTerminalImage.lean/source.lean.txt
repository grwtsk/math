/-
WholePredictiveRepresentationAndTerminalImage - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: d017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7
Organized SHA-256: fe450d31190664564f2ec2d55aee30b3d4c1f5de37cb59f7e80b737e6e58c770
PMD: 510.0.070.020.080 quotient types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Whole PredictiveRepresentation record and realized encoder-image construction, surjectivity, chosen descent and uniqueness/terminal-image proofs. No equivalence to the whole Rep type. Root selected this complete seam after full individual source/provider reads. Original whole-file documentation below is retained unchanged and can also describe other components. Historical providers remain literal; no stronger quotient, equivalence, canonicality or semantic law is inferred.
-/

import DAF.System
import Mathlib.Data.List.Basic
import Mathlib.Data.Set.Operations
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.QuotientPresentations.FiniteGraphAndObservationComponents.Variantd017e5c17eee8065.FullFutureTraceQuotient

/-!
# Causal observational state

Two states are causally equivalent when every future input word gives equal
observations at every resolution.  The quotient is therefore the minimal
object retaining the selected system's entire observable future.

There is one necessary variance condition for transport.  A general system
homomorphism maps source inputs into target inputs; causal equivalence in the
target quantifies over *all* target input words.  Consequently forward causal
transport requires the input map to be surjective.  This hypothesis is
explicit below.  A system isomorphism supplies it from its inverse laws.

A predictive representation need only identify states that are causally
equivalent.  Its realized encoder image—not the whole representation type—has
a unique map to causal state agreeing with the quotient map.
-/

universe uP

namespace DAF

namespace System

variable {M N : System}

/-! ## Causal quotient -/

namespace Hom

end Hom

namespace Factor

end Factor

/-! ## Isomorphism transport -/

namespace Iso

end Iso

/-! ## Predictive representations -/

/--
A predictively sufficient encoding: equality of representations guarantees
equality of the complete observable future.
-/
structure PredictiveRepresentation (M : System) where
  Rep : Type uP
  encode : M.State → Rep
  sufficient :
    ∀ {x y}, encode x = encode y → M.CausalEquivalent x y

namespace PredictiveRepresentation

variable (P : PredictiveRepresentation M)

/-- The realized image of a predictive encoder. -/
def RealizedImage :=
  Set.range P.encode

/-- A concrete state regarded as a point of the realized encoder image. -/
def toRealizedImage (x : M.State) : P.RealizedImage :=
  ⟨P.encode x, ⟨x, rfl⟩⟩

theorem toRealizedImage_surjective :
    Function.Surjective P.toRealizedImage := by
  rintro ⟨value, x, hx⟩
  refine ⟨x, ?_⟩
  apply Subtype.ext
  exact hx

/--
The canonical map from realized predictive values to causal state.  A chosen
preimage is harmless because predictive sufficiency identifies all choices.
-/
noncomputable def realizedImageToCausal
    (value : P.RealizedImage) : M.CausalState :=
  M.toCausal (Classical.choose value.property)

@[simp]
theorem realizedImageToCausal_toRealizedImage (x : M.State) :
    P.realizedImageToCausal (P.toRealizedImage x) = M.toCausal x := by
  apply (M.toCausal_eq_iff _ _).2
  apply P.sufficient
  exact Classical.choose_spec (P.toRealizedImage x).property

theorem realizedImageToCausal_unique
    (descend : P.RealizedImage → M.CausalState)
    (hdescend :
      ∀ x, descend (P.toRealizedImage x) = M.toCausal x) :
    descend = P.realizedImageToCausal := by
  funext value
  rcases P.toRealizedImage_surjective value with ⟨x, rfl⟩
  rw [hdescend]
  exact (P.realizedImageToCausal_toRealizedImage x).symm

/--
The causal quotient is terminal among maps out of the realized image of any
predictively sufficient representation.
-/
theorem causalState_terminal :
    ∃! descend : P.RealizedImage → M.CausalState,
      ∀ x, descend (P.toRealizedImage x) = M.toCausal x := by
  refine ⟨P.realizedImageToCausal,
    P.realizedImageToCausal_toRealizedImage, ?_⟩
  intro descend hdescend
  exact P.realizedImageToCausal_unique descend hdescend

end PredictiveRepresentation

/-- Specification-shaped alias of the predictive terminal-image theorem. -/
theorem causalState_terminal (P : PredictiveRepresentation M) :
    ∃! descend : Set.range P.encode → M.CausalState,
      ∀ x, descend ⟨P.encode x, ⟨x, rfl⟩⟩ = M.toCausal x :=
  P.causalState_terminal

end System

end DAF
