/-
FiniteAntiunitaryAndAllExactHypotheses — individual source review
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

/-- Fixed exchange of the representative and conjugate-character sheets. -/
def characterSheetFlip : Fin 2 ≃ Fin 2 := Equiv.swap 0 1

@[simp]
theorem characterSheetFlip_involutive (sheet : Fin 2) :
    characterSheetFlip (characterSheetFlip sheet) = sheet := by
  fin_cases sheet <;> simp [characterSheetFlip]

/-- The fixed `σ₃` sign on the two spindle components. -/
def spindleSpinSign (spin : Fin 2) : ℂ :=
  if spin = 0 then 1 else -1

@[simp]
theorem spindleSpinSign_norm (spin : Fin 2) :
    ‖spindleSpinSign spin‖ = 1 := by
  fin_cases spin <;> simp [spindleSpinSign]

@[simp]
theorem spindleSpinSign_conj (spin : Fin 2) :
    conj (spindleSpinSign spin) = spindleSpinSign spin := by
  fin_cases spin <;> simp [spindleSpinSign]

@[simp]
theorem spindleSpinSign_sq (spin : Fin 2) :
    spindleSpinSign spin * spindleSpinSign spin = 1 := by
  fin_cases spin <;> simp [spindleSpinSign]

/-- Reflection-symmetric finite spectral data for one conjugacy orbit. -/
structure FunctionalEquationDatum (Grid : Type u) where
  characterOrbit : CharacterOrbit
  rootNumber : ℂ
  rootNumber_norm : ‖rootNumber‖ = 1
  reflection : Grid ≃ Grid
  reflection_involutive : ∀ grid, reflection (reflection grid) = grid
  spectralValue : Grid → ℝ
  spectral_reflection : ∀ grid,
    spectralValue (reflection grid) = -spectralValue grid

namespace FunctionalEquationDatum

variable {Grid : Type u} [Fintype Grid]

/-- Coordinate carrier: spectral point, spindle sheet, character-orbit sheet. -/
abbrev OrbitHilbert (Grid : Type u) [Fintype Grid] :=
  FiniteHilbert (Grid × (Fin 2 × Fin 2))

/-- The coordinate permutation underlying the real structure. -/
def coordinateReflection (datum : FunctionalEquationDatum Grid) :
    Grid × (Fin 2 × Fin 2) ≃ Grid × (Fin 2 × Fin 2) :=
  Equiv.prodCongr datum.reflection
    (Equiv.prodCongr (Equiv.refl (Fin 2)) characterSheetFlip)

omit [Fintype Grid] in
@[simp]
theorem coordinateReflection_apply
    (datum : FunctionalEquationDatum Grid)
    (index : Grid × (Fin 2 × Fin 2)) :
    datum.coordinateReflection index =
      (datum.reflection index.1,
        (index.2.1, characterSheetFlip index.2.2)) :=
  rfl

omit [Fintype Grid] in
@[simp]
theorem coordinateReflection_involutive
    (datum : FunctionalEquationDatum Grid)
    (index : Grid × (Fin 2 × Fin 2)) :
    datum.coordinateReflection (datum.coordinateReflection index) = index := by
  rcases index with ⟨grid, spin, sheet⟩
  simp [coordinateReflection, datum.reflection_involutive]

omit [Fintype Grid] in
theorem rootNumber_mul_conj (datum : FunctionalEquationDatum Grid) :
    datum.rootNumber * conj datum.rootNumber = 1 := by
  calc
    datum.rootNumber * conj datum.rootNumber =
        (Complex.normSq datum.rootNumber : ℂ) :=
      Complex.mul_conj datum.rootNumber
    _ = ((‖datum.rootNumber‖ ^ 2 : ℝ) : ℂ) := by
      rw [Complex.normSq_eq_norm_sq]
    _ = 1 := by rw [datum.rootNumber_norm]; norm_num

/-- Explicit finite functional-equation real structure. -/
def functionalEquationRealStructure
    (datum : FunctionalEquationDatum Grid)
    (vector : OrbitHilbert Grid) : OrbitHilbert Grid :=
  WithLp.toLp 2 fun index ↦
    datum.rootNumber * spindleSpinSign index.2.1 *
      conj (vector (datum.coordinateReflection index))

@[simp]
theorem functionalEquationRealStructure_apply
    (datum : FunctionalEquationDatum Grid)
    (vector : OrbitHilbert Grid)
    (index : Grid × (Fin 2 × Fin 2)) :
    datum.functionalEquationRealStructure vector index =
      datum.rootNumber * spindleSpinSign index.2.1 *
        conj (vector (datum.coordinateReflection index)) :=
  rfl

theorem functionalEquationRealStructure_add
    (datum : FunctionalEquationDatum Grid)
    (left right : OrbitHilbert Grid) :
    datum.functionalEquationRealStructure (left + right) =
      datum.functionalEquationRealStructure left +
        datum.functionalEquationRealStructure right := by
  ext index
  simp [functionalEquationRealStructure, mul_add]

theorem functionalEquationRealStructure_smul
    (datum : FunctionalEquationDatum Grid)
    (scalar : ℂ) (vector : OrbitHilbert Grid) :
    datum.functionalEquationRealStructure (scalar • vector) =
      conj scalar • datum.functionalEquationRealStructure vector := by
  ext index
  simp [functionalEquationRealStructure]
  ring

theorem functionalEquationRealStructure_norm
    (datum : FunctionalEquationDatum Grid)
    (vector : OrbitHilbert Grid) :
    ‖datum.functionalEquationRealStructure vector‖ = ‖vector‖ := by
  have squareEquality :
      ‖datum.functionalEquationRealStructure vector‖ ^ 2 = ‖vector‖ ^ 2 := by
    rw [EuclideanSpace.norm_sq_eq, EuclideanSpace.norm_sq_eq]
    simp_rw [functionalEquationRealStructure_apply, norm_mul,
      Complex.norm_conj,
      datum.rootNumber_norm, spindleSpinSign_norm, one_mul]
    exact datum.coordinateReflection.sum_comp
      (fun index ↦ ‖vector index‖ ^ 2)
  nlinarith [norm_nonneg (datum.functionalEquationRealStructure vector),
    norm_nonneg vector]

theorem functionalEquationRealStructure_involutive
    (datum : FunctionalEquationDatum Grid)
    (vector : OrbitHilbert Grid) :
    datum.functionalEquationRealStructure
        (datum.functionalEquationRealStructure vector) = vector := by
  ext index
  rcases index with ⟨grid, spin, sheet⟩
  fin_cases spin <;> fin_cases sheet <;>
    simp [functionalEquationRealStructure, coordinateReflection,
      characterSheetFlip, spindleSpinSign,
      datum.reflection_involutive]
  all_goals
    rw [← mul_assoc, datum.rootNumber_mul_conj, one_mul]

/-- Concrete finite antiunitarity package. -/
structure IsFiniteAntiunitary
    (operator : OrbitHilbert Grid → OrbitHilbert Grid) : Prop where
  map_add : ∀ (left right : OrbitHilbert Grid),
    operator (left + right) = operator left + operator right
  map_smul : ∀ (scalar : ℂ) (vector : OrbitHilbert Grid),
    operator (scalar • vector) = conj scalar • operator vector
  norm_map : ∀ vector : OrbitHilbert Grid, ‖operator vector‖ = ‖vector‖
  bijective : Function.Bijective operator

theorem functionalEquationRealStructure_antiunitary
    (datum : FunctionalEquationDatum Grid) :
    IsFiniteAntiunitary datum.functionalEquationRealStructure where
  map_add := datum.functionalEquationRealStructure_add
  map_smul := datum.functionalEquationRealStructure_smul
  norm_map := datum.functionalEquationRealStructure_norm
  bijective := by
    apply Function.Involutive.bijective
    exact datum.functionalEquationRealStructure_involutive

end FunctionalEquationDatum

end DAF.Arithmetic
