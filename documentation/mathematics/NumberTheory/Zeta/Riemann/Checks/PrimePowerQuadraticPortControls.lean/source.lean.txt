/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI GPT-5.6 Sol.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerQuadraticPort
import Mathlib.Tactic

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerQuadraticPort.Checks

open GRWTSK.NumberTheory.ArithmeticFunctions.PrimeExponentScale
open GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerAtoms
open GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt
open GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerQuadraticPort

/-- The exact von Mangoldt coefficient of 2 and 4 is the same. -/
theorem two_and_four_have_same_weight :
    atomWeight (unitAtom primeTwo) =
      atomWeight (squareAtom primeTwo) := by
  symm
  exact atomWeight_same_prime primeTwo 2 (by norm_num)

/-- The weight at 4 is not twice the weight at 2. -/
theorem four_weight_is_not_two_times_two_weight :
    atomWeight (squareAtom primeTwo) ≠
      2 * atomWeight (unitAtom primeTwo) :=
  squareAtom_weight_ne_two_unitAtom_weight primeTwo

/-- Every finite stage/test energy is nonnegative. -/
theorem arbitrary_stage_energy_nonnegative
    (stage : PrimePowerWitnessStage) (f : ℝ → ℝ) :
    0 ≤ stageEnergy stage f :=
  stageEnergy_nonneg stage f

/-- A zero test has zero finite Gram energy. -/
theorem zero_test_has_zero_energy
    (stage : PrimePowerWitnessStage) :
    stageEnergy stage (fun _ => 0) = 0 := by
  classical
  simp [stageEnergy]

/-- A positive finite Gram cannot converge with vanishing error and positive
scale to the strictly negative quartic at horizontal displacement one. -/
theorem no_extraction_at_unit_horizontal_displacement :
    QuarticExtraction 1 0 → False := by
  intro h
  have hz :=
    horizontal_displacement_eq_zero_of_quarticExtraction h
  norm_num at hz

/-- The source-faithful atom quotient witness remains nonzero even though its
net exponent data vanish. -/
theorem collapse_witness_survives_in_source :
    collapseKernelWitness primeTwo ≠ 0 ∧
      collapse (collapseKernelWitness primeTwo) = 0 :=
  ⟨collapseKernelWitness_ne_zero primeTwo,
    collapseKernelWitness_mem_kernel primeTwo⟩

/-- The three fixed phases remain a triangle. -/
theorem triangular_base_cardinality :
    Nat.card GRWTSK.Geometry.ThreePlusOne.TrianglePhase = 3 := by
  norm_num [GRWTSK.Geometry.ThreePlusOne.TrianglePhase]

end GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerQuadraticPort.Checks
