/-
FiniteGammaActionIntertwining — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: f12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412
Organized SHA-256: d0fafb0b54b3f133b439786a8510572837039ad015c72304381890f211e02d37
PMD: 510.5.050.040 hilbert spaces (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Two complete finite Hilbert components retain the exact sheet/sign convention, whole reflection-symmetric datum, every unit-phase/reflection/spectral equality premise, anti-linearity, norm preservation, involution and antiunitarity proofs; then the exact Gamma-spindle action and intertwining proof. Only an exact same-source antiunitary component is added to the second module. The historical GammaSpindle and Finite imports are unchanged. This is finite Grid data, not an unbounded L2 realization or a global arithmetic functional equation. -/

import DAF.Arithmetic.GammaSpindle
import DAF.Hilbert.Finite
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Tactic.FinCases

import GRWTSK.Analysis.FunctionalAnalysis.HilbertSpaces.FiniteReflectionAntiunitarity.Variantf12e27b9353d0d00.FiniteAntiunitaryAndAllExactHypotheses

/-!
# Finite functional-equation real structure

This module fixes one sign convention.  On a finite reflection-symmetric
spectral grid, the real structure reflects the spectral coordinate,
conjugates coefficients, exchanges the character/conjugate-character sheets,
multiplies by the supplied unit root-number phase, and applies `σ₃` on the
spindle spinor.  With this convention it commutes with the exact finite
Gamma-spindle action.

This is a finite theorem.  It does not instantiate the unbounded analytic
`L²(ℝ;ℂ²)` capability.
-/

noncomputable section

namespace DAF.Arithmetic

open DAF.Hilbert
open scoped ComplexConjugate

universe u

namespace FunctionalEquationDatum

variable {Grid : Type u} [Fintype Grid]

/-- Pointwise block-diagonal Gamma-spindle action on both character sheets. -/
def orbitGammaAction
    (datum : FunctionalEquationDatum Grid)
    (vector : OrbitHilbert Grid) : OrbitHilbert Grid :=
  WithLp.toLp 2 fun index ↦
    Matrix.mulVec
      (GammaSpindleDirac datum.characterOrbit.representative
        (datum.spectralValue index.1))
      (fun spin ↦ vector (index.1, (spin, index.2.2))) index.2.1

/-- The fixed real-structure convention intertwines the finite orbit Gamma
operator. -/
theorem functionalEquationRealStructure_intertwines
    (datum : FunctionalEquationDatum Grid)
    (vector : OrbitHilbert Grid) :
    datum.functionalEquationRealStructure (datum.orbitGammaAction vector) =
      datum.orbitGammaAction
        (datum.functionalEquationRealStructure vector) := by
  ext index
  rcases index with ⟨grid, spin, sheet⟩
  fin_cases spin <;> fin_cases sheet <;>
    simp [functionalEquationRealStructure, orbitGammaAction,
      GammaSpindleDirac, Matrix.mulVec,
      datum.spectral_reflection,
      gammaSpindleProfile_even, spindleSpinSign, characterSheetFlip]
  all_goals ring

end FunctionalEquationDatum

end DAF.Arithmetic
