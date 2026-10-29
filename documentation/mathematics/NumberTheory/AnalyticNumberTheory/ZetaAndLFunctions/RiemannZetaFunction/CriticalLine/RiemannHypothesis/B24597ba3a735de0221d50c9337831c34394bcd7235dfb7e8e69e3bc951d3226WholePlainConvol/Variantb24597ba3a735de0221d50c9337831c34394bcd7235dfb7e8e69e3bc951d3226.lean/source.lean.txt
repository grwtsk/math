import SourceWholePlainConvolution

/-!
# Endpoints and finite hostile carriers for complete plain rows

UNCOMPILED preparation. Actual endpoint and accounting fixtures keep the source
normalization, original closed upper inventory and raw cutoff-one diagonal.
The three omitted-correction fixtures use actual Mangoldt coefficients with
explicitly synthetic indicator weights. They refute incorrect finite-carrier
identities, not the original q_A arithmetic estimate or Riemann hypothesis.

Formal preparation: OpenAI Codex; independent verification is a separate gate.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.WholePlainConvolutionFixtures

open ArithmeticFunction
open SourceCutoffFlux SourceCutoffOneLedger SourceWholePlainConvolution
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimatePlainKernel EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensResidual

noncomputable section

private def atomWeight (a n : ℕ) : ℝ := if n = a then 1 else 0

/-- Equality at the continuous original upper source endpoint is explicitly zero. -/
theorem actual_upper_endpoint (A : ℝ) (hA : 1 ≤ A) :
    sourcePlainWeight A (Real.exp (2 * A)) = 0 :=
  sourcePlainWeight_upper_zero A hA

/-- Completion of the actual product mask uses the original integer support theorem. -/
theorem actual_product_outside_inventory (A : ℝ) (hA : 1 ≤ A) (m n : ℕ)
    (hmn : sourceKernelCutoff A < m * n) :
    sourcePlainWeight A ((m * n : ℕ) : ℝ) = 0 :=
  sourcePlainWeight_zero_of_cutoff_lt A hA (m * n) hmn

/-- The strict two-axis source contains the unit-column and raw diagonal corrections. -/
theorem actual_strict_inventory_accounting (A : ℝ) (hA : 1 ≤ A) :
    plainOffAt A 1 (sourceKernelCutoff A) + mertensResidual A - cutoffOneDiagonal A =
      sourceMobiusKernel A 1 := by
  rw [plainOff_one_eq_logRow_sub_residual_add_diagonal A hA]
  ring

/-- On a supported synthetic weight, omitting the unit column changes the finite interaction. -/
theorem omitted_unit_column_is_false :
    offDiagonal (Finset.Ioc 1 2)
      (fun m n ↦ vonMangoldt m * atomWeight 2 (m * n)) (fun _ ↦ 1) ≠
    rectangle (Finset.Icc 1 2)
      (fun m n ↦ vonMangoldt m * atomWeight 2 (m * n)) (fun _ ↦ 1) := by
  have hi : Finset.Ioc 1 2 = ({2} : Finset ℕ) := by decide
  have hc : Finset.Icc 1 2 = ({1, 2} : Finset ℕ) := by decide
  have hp : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  convert (ne_of_lt hp) using 1 <;>
    norm_num [offDiagonal, rectangle, diagonal, hi, hc, atomWeight,
      vonMangoldt_apply_prime Nat.prime_two]

/-- On a supported synthetic four-product carrier, the deleted diagonal is nonzero. -/
theorem omitted_diagonal_is_false :
    offDiagonal (Finset.Ioc 1 4)
      (fun m n ↦ vonMangoldt m * atomWeight 4 (m * n)) (fun _ ↦ 1) ≠
    rectangle (Finset.Ioc 1 4)
      (fun m n ↦ vonMangoldt m * atomWeight 4 (m * n)) (fun _ ↦ 1) := by
  have hi : Finset.Ioc 1 4 = ({2, 3, 4} : Finset ℕ) := by decide
  have hp : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  convert (ne_of_lt hp) using 1 <;>
    norm_num [offDiagonal, rectangle, diagonal, hi, atomWeight,
      vonMangoldt_apply_prime Nat.prime_two]

/-- A synthetic atom at four violates support at N=2 and defeats unmasked completion. -/
theorem unsupported_product_mask_removal_is_false :
    atomWeight 4 4 = 1 ∧ (¬ ∀ n : ℕ, 2 < n → atomWeight 4 n = 0) ∧
      (∑ m ∈ Finset.Icc 1 2, ∑ n ∈ Finset.Icc 1 2,
        vonMangoldt m * atomWeight 4 (m * n)) ≠
      (∑ k ∈ (Finset.Icc 1 2 : Finset ℕ), Real.log (k : ℝ) * atomWeight 4 k) := by
  refine ⟨by norm_num [atomWeight], ?_, ?_⟩
  · intro h
    have h4 := h 4 (by norm_num)
    norm_num [atomWeight] at h4
  · have hc : Finset.Icc 1 2 = ({1, 2} : Finset ℕ) := by decide
    have hp : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
    convert (ne_of_gt hp) using 1 <;>
      norm_num [hc, atomWeight, vonMangoldt_apply_prime Nat.prime_two]

end
end FormalResearch.RiemannHypothesis.WholePlainConvolutionFixtures
