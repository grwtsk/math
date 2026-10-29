-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.BlockRightIndexFinset.Variantc5c71034ead1cadc70d0382560a148e46acdd594ff326997334bc5e4c467f1df","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c5c71034ead1cadc70d0382560a148e46acdd594ff326997334bc5e4c467f1df","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.BlockRightIndexFinset.Variantc5c71034ead1cadc70d0382560a148e46acdd594ff326997334bc5e4c467f1df","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"c5c71034ead1cadc70d0382560a148e46acdd594ff326997334bc5e4c467f1df","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/ConductorThreeTypeIIBlockNorms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeTypeIICoefficientNorms
public import Surface.Core.ConductorThreeVaughanRightHarmonicCube
public import Surface.Core.TypeII.CanonicalFactorBlock
import Mathlib.Tactic

/-!
# Second-moment norm bound for dyadic conductor-three Type II blocks

This adapter restricts the unconditional global right-coefficient second
moment to one dyadic shell.  It improves the elementary pointwise divisor
bound without asserting the still-open polylogarithmic lcm estimate.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.BlockRightIndexFinset.Variantc5c71034ead1cadc70d0382560a148e46acdd594ff326997334bc5e4c467f1df

public section

namespace Surface.Core.ConductorThreeTypeIIBlockNorms

noncomputable section

open scoped BigOperators ArithmeticFunction
open Surface.Core.ConductorThreeTwistedVaughan
open Surface.Core.ConductorThreeVaughanBlocks
open Surface.Core.ConductorThreeTypeIICoefficientNorms
open Surface.Core.ConductorThreeVaughanRightSecondMoment
open Surface.Core.ConductorThreeVaughanRightHarmonicCube
open Surface.Core.TypeII

private def blockRightIndexFinset {N : ℕ} (B : TypeIIDyadicBlock N) :
    Finset ℕ :=
  Finset.univ.image (fun k : B.Right ↦ k.1.1)

private theorem blockRightIndexFinset_subset {N : ℕ}
    (B : TypeIIDyadicBlock N) :
    blockRightIndexFinset B ⊆ Finset.Ioc 0 (2 * B.K) := by
  intro k hk
  rcases Finset.mem_image.mp hk with ⟨index, _, rfl⟩
  simp only [Finset.mem_Ioc]
  exact ⟨by omega, index.2.2⟩

private theorem sum_blockRight_eq_indexFinset {N : ℕ}
    (B : TypeIIDyadicBlock N) (f : ℕ → ℝ) :
    (∑ k : B.Right, f k.1.1) =
      ∑ k ∈ blockRightIndexFinset B, f k := by
  rw [blockRightIndexFinset]
  apply (Finset.sum_image ?_).symm
  intro k hk l hl hkl
  apply Subtype.ext
  apply Fin.ext
  exact hkl

private theorem blockRightCoefficient_norm_sq_le_arithmetic
    {N : ℕ} (B : TypeIIDyadicBlock N) (k : B.Right) :
    ‖blockRightCoefficient B k‖ ^ 2 ≤
      |(Surface.Core.ConductorThreeCharacterArithmetic.conductorThreeIntegerValue
          k.1.1 : ℝ) *
        vaughanDivisorCoefficient (vaughanFourthRootCutoff N) k.1.1| ^ 2 := by
  by_cases hcut : vaughanFourthRootCutoff N < k.1.1
  · rw [blockRightCoefficient, TypeII.conductorThreeVaughanRight,
      if_pos hcut, Complex.norm_real, Real.norm_eq_abs]
  · rw [blockRightCoefficient, TypeII.conductorThreeVaughanRight,
      if_neg hcut, norm_zero, zero_pow (by norm_num : (2 : ℕ) ≠ 0)]
    positivity

/-- The dyadic right-vector energy is bounded by the global lcm envelope. -/
@[surface_novel, surface_published]
theorem blockRight_norm_sq_le_secondMoment {N : ℕ}
    (B : TypeIIDyadicBlock N) :
    ‖blockRightEuclideanCoefficient B‖ ^ 2 ≤
      conductorThreeVaughanRightSecondMoment
        (vaughanFourthRootCutoff N) (2 * B.K) := by
  rw [EuclideanSpace.norm_sq_eq]
  change (∑ k : B.Right, ‖blockRightCoefficient B k‖ ^ 2) ≤ _
  calc
    (∑ k : B.Right, ‖blockRightCoefficient B k‖ ^ 2) ≤
        ∑ k : B.Right,
          |(Surface.Core.ConductorThreeCharacterArithmetic.conductorThreeIntegerValue
              k.1.1 : ℝ) *
            vaughanDivisorCoefficient (vaughanFourthRootCutoff N) k.1.1| ^ 2 := by
      apply Finset.sum_le_sum
      intro k hk
      exact blockRightCoefficient_norm_sq_le_arithmetic B k
    _ = ∑ k ∈ blockRightIndexFinset B,
          |(Surface.Core.ConductorThreeCharacterArithmetic.conductorThreeIntegerValue
              k : ℝ) *
            vaughanDivisorCoefficient (vaughanFourthRootCutoff N) k| ^ 2 :=
      by
        simpa using sum_blockRight_eq_indexFinset B
          (fun k ↦
            |(Surface.Core.ConductorThreeCharacterArithmetic.conductorThreeIntegerValue
                k : ℝ) *
              vaughanDivisorCoefficient (vaughanFourthRootCutoff N) k| ^ 2)
    _ ≤ ∑ k ∈ Finset.Ioc 0 (2 * B.K),
          |(Surface.Core.ConductorThreeCharacterArithmetic.conductorThreeIntegerValue
              k : ℝ) *
            vaughanDivisorCoefficient (vaughanFourthRootCutoff N) k| ^ 2 := by
      apply Finset.sum_le_sum_of_subset_of_nonneg
        (blockRightIndexFinset_subset B)
      intro k hk hnot
      positivity
    _ = _ := rfl

/-- Unconditional harmonic second-moment norm bound for one dyadic right
block. -/
@[surface_novel, surface_published]
theorem conductorThreeVaughanRight_block_l2_harmonic {N : ℕ}
    (B : TypeIIDyadicBlock N) :
    ‖blockRightEuclideanCoefficient B‖ ≤
      Real.sqrt ((vaughanFourthRootCutoff N : ℝ) *
        (2 * B.K : ℝ) *
        (harmonic (vaughanFourthRootCutoff N) : ℝ)) := by
  have hharmonic : 0 ≤
      (harmonic (vaughanFourthRootCutoff N) : ℝ) := by
    exact (Real.log_nonneg (by
      exact_mod_cast (show 1 ≤ vaughanFourthRootCutoff N + 1 by omega))).trans
      (log_add_one_le_harmonic (vaughanFourthRootCutoff N))
  apply (Real.le_sqrt (norm_nonneg _)
    (by
      exact mul_nonneg (mul_nonneg (by positivity) (by positivity)) hharmonic : 0 ≤
      (vaughanFourthRootCutoff N : ℝ) * (2 * B.K : ℝ) *
        (harmonic (vaughanFourthRootCutoff N) : ℝ))).2
  exact (blockRight_norm_sq_le_secondMoment B).trans (by
    simpa only [Nat.cast_mul, Nat.cast_ofNat] using
      conductorThreeVaughanRightSecondMoment_le_harmonic
        (vaughanFourthRootCutoff N) (2 * B.K))

/-- Sharp harmonic-cube energy bound for one dyadic right block. -/
@[surface_novel, surface_published]
theorem blockRight_norm_sq_le_harmonic_cube {N : ℕ}
    (B : TypeIIDyadicBlock N) :
    ‖blockRightEuclideanCoefficient B‖ ^ 2 ≤
      (2 * B.K : ℝ) *
        (harmonic (vaughanFourthRootCutoff N) : ℝ) ^ 3 :=
  (blockRight_norm_sq_le_secondMoment B).trans (by
    simpa only [Nat.cast_mul, Nat.cast_ofNat] using
      conductorThreeVaughanRightSecondMoment_le_harmonic_cube
        (vaughanFourthRootCutoff N) (2 * B.K))

/-- Sharp unconditional `ℓ²` norm bound obtained from the harmonic-cube
second moment. -/
@[surface_novel, surface_published]
theorem conductorThreeVaughanRight_block_l2_harmonic_cube {N : ℕ}
    (B : TypeIIDyadicBlock N) :
    ‖blockRightEuclideanCoefficient B‖ ≤
      Real.sqrt ((2 * B.K : ℝ) *
        (harmonic (vaughanFourthRootCutoff N) : ℝ) ^ 3) := by
  have hH : 0 ≤ (harmonic (vaughanFourthRootCutoff N) : ℝ) := by
    exact (Real.log_nonneg (by
      exact_mod_cast (show 1 ≤ vaughanFourthRootCutoff N + 1 by omega))).trans
      (log_add_one_le_harmonic (vaughanFourthRootCutoff N))
  apply (Real.le_sqrt (norm_nonneg _)
    (mul_nonneg (by positivity) (pow_nonneg hH 3))).2
  exact blockRight_norm_sq_le_harmonic_cube B

/-! ## Half-open shell-factor blocks

The bounds below apply to the exponent-indexed blocks used by the
hyperbolic Carleson layer.  They retain the exact powers of two; no
`N^ε` or logarithmic absorption is performed here.
-/

/-- Left shell coefficient vector with its intended Euclidean norm. -/
@[expose]
def shellBlockLeftEuclideanCoefficient {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) : EuclideanSpace ℂ B.Left :=
  WithLp.toLp 2 (shellBlockLeftCoefficient B)

/-- Right shell coefficient vector with its intended Euclidean norm. -/
@[expose]
def shellBlockRightEuclideanCoefficient {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) : EuclideanSpace ℂ B.Right :=
  WithLp.toLp 2 (shellBlockRightCoefficient B)

private def shellLeftOffset {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) :
    B.Left → Fin (2 ^ B.leftExponent) :=
  fun m ↦ ⟨m.1.1 - 2 ^ B.leftExponent, by
    have hlower := m.2.2.1
    have hupper := m.2.2.2
    rw [pow_succ'] at hupper
    omega⟩

private theorem shellLeftOffset_injective {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) :
    Function.Injective (shellLeftOffset B) := by
  intro m n h
  apply Subtype.ext
  apply Fin.ext
  have hoff : m.1.1 - 2 ^ B.leftExponent =
      n.1.1 - 2 ^ B.leftExponent := congrArg Fin.val h
  have hm := m.2.2.1
  have hn := n.2.2.1
  calc
    m.1.1 = (m.1.1 - 2 ^ B.leftExponent) + 2 ^ B.leftExponent :=
      (Nat.sub_add_cancel hm).symm
    _ = (n.1.1 - 2 ^ B.leftExponent) + 2 ^ B.leftExponent := by rw [hoff]
    _ = n.1.1 := Nat.sub_add_cancel hn

/-- A half-open left factor shell contains at most `2^j` indices. -/
@[surface_novel, surface_published]
theorem shellBlockLeft_card_le_pow {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) :
    Fintype.card B.Left ≤ 2 ^ B.leftExponent := by
  simpa using Fintype.card_le_of_injective (shellLeftOffset B)
    (shellLeftOffset_injective B)

private theorem abs_conductorThreeIntegerValue_cast_le_one_shell (n : ℕ) :
    |(Surface.Core.ConductorThreeCharacterArithmetic.conductorThreeIntegerValue
      n : ℝ)| ≤ 1 := by
  rcases Surface.Core.ConductorThreeCharacterArithmetic.conductorThreeIntegerValue_cases n with
    h | h | h
  · rw [h.2]; norm_num
  · rw [h.2]; norm_num
  · rw [h.2]; norm_num

private theorem shellLeft_log_nonneg {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) :
    0 ≤ Real.log ((2 ^ (B.leftExponent + 1) : ℕ) : ℝ) := by
  apply Real.log_nonneg
  exact_mod_cast Nat.one_le_pow (B.leftExponent + 1) 2 (by decide)

/-- Pointwise Mangoldt bound at the exact left shell scale. -/
@[surface_novel, surface_published]
theorem shellBlockLeftCoefficient_norm_le_log_pow {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) (m : B.Left) :
    ‖shellBlockLeftCoefficient B m‖ ≤
      Real.log ((2 ^ (B.leftExponent + 1) : ℕ) : ℝ) := by
  have hcut := m.2.1
  have hmpos : 0 < m.1.1 := by
    exact (by positivity : 0 < 2 ^ B.leftExponent).trans_le m.2.2.1
  have hlog : Real.log (m.1.1 : ℝ) ≤
      Real.log ((2 ^ (B.leftExponent + 1) : ℕ) : ℝ) := by
    apply Real.log_le_log
    · exact_mod_cast hmpos
    · exact_mod_cast m.2.2.2.le
  rw [shellBlockLeftCoefficient, conductorThreeVaughanLeft, if_pos hcut,
    Complex.norm_real, Real.norm_eq_abs, abs_mul,
    abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg]
  calc
    |(Surface.Core.ConductorThreeCharacterArithmetic.conductorThreeIntegerValue
        m.1.1 : ℝ)| * ArithmeticFunction.vonMangoldt m.1.1 ≤
        1 * ArithmeticFunction.vonMangoldt m.1.1 :=
      mul_le_mul_of_nonneg_right
        (abs_conductorThreeIntegerValue_cast_le_one_shell m.1.1)
        ArithmeticFunction.vonMangoldt_nonneg
    _ ≤ Real.log ((2 ^ (B.leftExponent + 1) : ℕ) : ℝ) := by
      have hLambda : ArithmeticFunction.vonMangoldt m.1.1 ≤
          Real.log (m.1.1 : ℝ) := ArithmeticFunction.vonMangoldt_le_log
      linarith

/-- Exact-scale left shell energy bound. -/
@[surface_novel, surface_published]
theorem shellBlockLeft_energy_le_pow_mul_log_sq {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) :
    (∑ m : B.Left, ‖shellBlockLeftCoefficient B m‖ ^ 2) ≤
      (2 ^ B.leftExponent : ℕ) *
        Real.log ((2 ^ (B.leftExponent + 1) : ℕ) : ℝ) ^ 2 := by
  calc
    (∑ m : B.Left, ‖shellBlockLeftCoefficient B m‖ ^ 2) ≤
        ∑ _m : B.Left,
          Real.log ((2 ^ (B.leftExponent + 1) : ℕ) : ℝ) ^ 2 := by
      apply Finset.sum_le_sum
      intro m hm
      gcongr
      exact shellBlockLeftCoefficient_norm_le_log_pow B m
    _ = (Fintype.card B.Left : ℝ) *
        Real.log ((2 ^ (B.leftExponent + 1) : ℕ) : ℝ) ^ 2 := by simp
    _ ≤ (2 ^ B.leftExponent : ℕ) *
        Real.log ((2 ^ (B.leftExponent + 1) : ℕ) : ℝ) ^ 2 := by
      gcongr
      exact_mod_cast shellBlockLeft_card_le_pow B

/-- Euclidean norm-square spelling of the left shell energy estimate. -/
@[surface_adapter, surface_published]
theorem shellBlockLeft_norm_sq_le_pow_mul_log_sq {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) :
    ‖shellBlockLeftEuclideanCoefficient B‖ ^ 2 ≤
      (2 ^ B.leftExponent : ℕ) *
        Real.log ((2 ^ (B.leftExponent + 1) : ℕ) : ℝ) ^ 2 := by
  rw [EuclideanSpace.norm_sq_eq]
  exact shellBlockLeft_energy_le_pow_mul_log_sq B

private def shellRightIndexFinset {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) : Finset ℕ :=
  Finset.univ.image (fun k : B.Right ↦ k.1.1)

private theorem shellRightIndexFinset_subset {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) :
    shellRightIndexFinset B ⊆
      Finset.Ioc 0 (2 ^ (B.rightExponent + 1)) := by
  intro k hk
  rcases Finset.mem_image.mp hk with ⟨index, _, rfl⟩
  simp only [Finset.mem_Ioc]
  have hkpos : 0 < index.1.1 :=
    (Nat.pow_pos (by decide)).trans_le index.2.2.1
  exact ⟨hkpos, index.2.2.2.le⟩

private theorem sum_shellRight_eq_indexFinset {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) (f : ℕ → ℝ) :
    (∑ k : B.Right, f k.1.1) =
      ∑ k ∈ shellRightIndexFinset B, f k := by
  rw [shellRightIndexFinset]
  apply (Finset.sum_image ?_).symm
  intro k hk l hl hkl
  apply Subtype.ext
  apply Fin.ext
  exact hkl

private theorem shellRightCoefficient_norm_sq_eq_arithmetic
    {N q : ℕ} (B : TypeIIShellFactorBlock N q) (k : B.Right) :
    ‖shellBlockRightCoefficient B k‖ ^ 2 =
      |(Surface.Core.ConductorThreeCharacterArithmetic.conductorThreeIntegerValue
          k.1.1 : ℝ) *
        vaughanDivisorCoefficient (vaughanFourthRootCutoff N) k.1.1| ^ 2 := by
  rw [shellBlockRightCoefficient, conductorThreeVaughanRight,
    if_pos k.2.1, Complex.norm_real, Real.norm_eq_abs]

/-- The right shell energy is dominated by the exact global second moment
at its upper dyadic endpoint. -/
@[surface_novel, surface_published]
theorem shellBlockRight_energy_le_secondMoment {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) :
    (∑ k : B.Right, ‖shellBlockRightCoefficient B k‖ ^ 2) ≤
      conductorThreeVaughanRightSecondMoment
        (vaughanFourthRootCutoff N) (2 ^ (B.rightExponent + 1)) := by
  calc
    (∑ k : B.Right, ‖shellBlockRightCoefficient B k‖ ^ 2) =
        ∑ k : B.Right,
          |(Surface.Core.ConductorThreeCharacterArithmetic.conductorThreeIntegerValue
              k.1.1 : ℝ) *
            vaughanDivisorCoefficient (vaughanFourthRootCutoff N) k.1.1| ^ 2 := by
      apply Finset.sum_congr rfl
      intro k hk
      exact shellRightCoefficient_norm_sq_eq_arithmetic B k
    _ = ∑ k ∈ shellRightIndexFinset B,
          |(Surface.Core.ConductorThreeCharacterArithmetic.conductorThreeIntegerValue
              k : ℝ) *
            vaughanDivisorCoefficient (vaughanFourthRootCutoff N) k| ^ 2 := by
      simpa using sum_shellRight_eq_indexFinset B
        (fun k ↦
          |(Surface.Core.ConductorThreeCharacterArithmetic.conductorThreeIntegerValue
              k : ℝ) *
            vaughanDivisorCoefficient (vaughanFourthRootCutoff N) k| ^ 2)
    _ ≤ ∑ k ∈ Finset.Ioc 0 (2 ^ (B.rightExponent + 1)),
          |(Surface.Core.ConductorThreeCharacterArithmetic.conductorThreeIntegerValue
              k : ℝ) *
            vaughanDivisorCoefficient (vaughanFourthRootCutoff N) k| ^ 2 := by
      apply Finset.sum_le_sum_of_subset_of_nonneg
        (shellRightIndexFinset_subset B)
      intro k hk hnot
      positivity
    _ = _ := rfl

/-- Sharp exact-scale harmonic-cube right shell energy bound. -/
@[surface_novel, surface_published]
theorem shellBlockRight_energy_le_pow_mul_harmonic_cube {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) :
    (∑ k : B.Right, ‖shellBlockRightCoefficient B k‖ ^ 2) ≤
      (2 ^ (B.rightExponent + 1) : ℕ) *
        (harmonic (vaughanFourthRootCutoff N) : ℝ) ^ 3 :=
  (shellBlockRight_energy_le_secondMoment B).trans (by
    simpa using conductorThreeVaughanRightSecondMoment_le_harmonic_cube
      (vaughanFourthRootCutoff N) (2 ^ (B.rightExponent + 1)))

/-- Euclidean norm-square spelling of the sharp right shell estimate. -/
@[surface_adapter, surface_published]
theorem shellBlockRight_norm_sq_le_pow_mul_harmonic_cube {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) :
    ‖shellBlockRightEuclideanCoefficient B‖ ^ 2 ≤
      (2 ^ (B.rightExponent + 1) : ℕ) *
        (harmonic (vaughanFourthRootCutoff N) : ℝ) ^ 3 := by
  rw [EuclideanSpace.norm_sq_eq]
  exact shellBlockRight_energy_le_pow_mul_harmonic_cube B

end

end Surface.Core.ConductorThreeTypeIIBlockNorms

end
