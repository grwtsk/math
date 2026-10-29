-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.HigherPrimePowerIndex.Variant656090940ae2bcff85ac5afc41254fb2efefc51b25af425a4d2e793ab6c17fca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"656090940ae2bcff85ac5afc41254fb2efefc51b25af425a4d2e793ab6c17fca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.HigherPrimePowerIndex.Variant656090940ae2bcff85ac5afc41254fb2efefc51b25af425a4d2e793ab6c17fca","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"656090940ae2bcff85ac5afc41254fb2efefc51b25af425a4d2e793ab6c17fca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle9/higher-coefficients/coefficients-v1-prebytes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtInteraction
import Mathlib.Topology.Algebra.InfiniteSum.Real

/-!
# Complete higher-prime-power coefficient mass

Prime bases and all exponents at least three have an independently summable
coefficient mass. There is no source cutoff in this index or baseline. The
construction makes no infinite subtraction for first primes or prime squares,
and supplies no signed arithmetic tail witness.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.HigherPrimePowerIndex.Variant656090940ae2bcff85ac5afc41254fb2efefc51b25af425a4d2e793ab6c17fca

set_option autoImplicit false

noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceHigherPrimePowerCoefficients

open ArithmeticFunction
open SourceMangoldtInteraction SourcePrimePowerPartition

/-- Every prime base and every offset, without an arithmetic or source cutoff. -/
abbrev HigherPrimePowerIndex := Nat.Primes × ℕ

/-- Offset zero begins at the actual exponent three. -/
def higherAtomExponent (i : HigherPrimePowerIndex) : ℕ := i.2 + 3

/-- The underlying actual natural prime power. -/
def higherAtomNatural (i : HigherPrimePowerIndex) : ℕ := (i.1 : ℕ) ^ higherAtomExponent i

/-- The exact geometric ratio attached to a prime base. -/
def primeRatio (p : Nat.Primes) : ℝ := ((p : ℕ) : ℝ) ^ (-(1 : ℝ) / 2)

/-- Independent full higher-sector coefficient, retaining the original exponential weight. -/
def higherAtomWeight (i : HigherPrimePowerIndex) : ℝ :=
  Real.log ((i.1 : ℕ) : ℝ) * primeRatio i.1 ^ higherAtomExponent i

/-- The literal positive translation separation attached to the prime power. -/
def higherAtomShift (i : HigherPrimePowerIndex) : ℝ :=
  (higherAtomExponent i : ℝ) * Real.log ((i.1 : ℕ) : ℝ)

theorem higherAtomExponent_ge_three (i : HigherPrimePowerIndex) :
    3 ≤ higherAtomExponent i := by simp [higherAtomExponent]

theorem higherAtomExponent_ne_zero (i : HigherPrimePowerIndex) :
    higherAtomExponent i ≠ 0 := by have := higherAtomExponent_ge_three i; omega

theorem higherAtomNatural_ge_two (i : HigherPrimePowerIndex) :
    2 ≤ higherAtomNatural i :=
  (i.1.property.isPrimePow.pow (higherAtomExponent_ne_zero i)).two_le

/-- Prime/exponent uniqueness preserves every offset, not merely the base. -/
theorem higherAtomNatural_injective : Function.Injective higherAtomNatural := by
  intro x y hxy
  obtain ⟨hp, hk⟩ := x.1.property.pow_inj' y.1.property
    (higherAtomExponent_ne_zero x) (higherAtomExponent_ne_zero y) hxy
  apply Prod.ext
  · exact Subtype.ext hp
  · simp only [higherAtomExponent] at hk
    omega

theorem primeRatio_pos (p : Nat.Primes) : 0 < primeRatio p :=
  Real.rpow_pos_of_pos (by exact_mod_cast p.property.pos) _

theorem primeRatio_nonneg (p : Nat.Primes) : 0 ≤ primeRatio p :=
  (primeRatio_pos p).le

/-- The smallest prime gives a strict geometric ratio, with an explicit rational envelope. -/
theorem primeRatio_le_three_quarters (p : Nat.Primes) : primeRatio p ≤ 3 / 4 := by
  have hp0 : 0 < ((p : ℕ) : ℝ) := by exact_mod_cast p.property.pos
  have hp2 : (2 : ℝ) ≤ (p : ℕ) := by exact_mod_cast p.property.two_le
  have h0 := primeRatio_nonneg p
  have he : primeRatio p ^ 2 = (((p : ℕ) : ℝ))⁻¹ := by
    unfold primeRatio
    rw [← Real.rpow_mul_natCast hp0.le]
    rw [show (-(1 : ℝ) / 2) * (2 : ℕ) = (-1 : ℝ) by norm_num,
      Real.rpow_neg_one]
  have hi : (((p : ℕ) : ℝ))⁻¹ ≤ 1 / 2 := by
    rw [inv_le_iff_one_le_mul₀ hp0]
    nlinarith
  nlinarith

theorem primeRatio_lt_one (p : Nat.Primes) : primeRatio p < 1 := by
  linarith [primeRatio_le_three_quarters p]

theorem higherAtomWeight_pos (i : HigherPrimePowerIndex) : 0 < higherAtomWeight i := by
  have hp1 : (1 : ℝ) < (i.1 : ℕ) := by exact_mod_cast i.1.property.one_lt
  exact mul_pos (Real.log_pos hp1) (pow_pos (primeRatio_pos i.1) _)

theorem higherAtomWeight_nonneg (i : HigherPrimePowerIndex) : 0 ≤ higherAtomWeight i :=
  (higherAtomWeight_pos i).le

theorem higherAtomShift_pos (i : HigherPrimePowerIndex) : 0 < higherAtomShift i := by
  have hp1 : (1 : ℝ) < (i.1 : ℕ) := by exact_mod_cast i.1.property.one_lt
  exact mul_pos (by exact_mod_cast (show 0 < higherAtomExponent i by
    have := higherAtomExponent_ge_three i; omega)) (Real.log_pos hp1)

/-- Direct coefficient transport never cancels a correlation that may vanish. -/
theorem higherAtomWeight_eq_mangoldtCoefficient (i : HigherPrimePowerIndex) :
    higherAtomWeight i = mangoldtCoefficient (higherAtomNatural i) := by
  have hp0 : 0 < ((i.1 : ℕ) : ℝ) := by exact_mod_cast i.1.property.pos
  have he : primeRatio i.1 ^ higherAtomExponent i =
      Real.exp (-((higherAtomExponent i : ℝ) * Real.log ((i.1 : ℕ) : ℝ)) / 2) := by
    unfold primeRatio
    rw [← Real.rpow_mul_natCast hp0.le, Real.rpow_def_of_pos hp0]
    congr 1
    ring
  unfold higherAtomWeight mangoldtCoefficient higherAtomNatural
  rw [vonMangoldt_apply_pow (higherAtomExponent_ne_zero i),
    vonMangoldt_apply_prime i.1.property, Nat.cast_pow, Real.log_pow, he]

/-- Every positive separation is exactly the logarithm of its actual natural atom. -/
theorem higherAtomShift_eq_log (i : HigherPrimePowerIndex) :
    higherAtomShift i = Real.log (higherAtomNatural i : ℝ) := by
  simp only [higherAtomShift, higherAtomNatural, Nat.cast_pow, Real.log_pow]

/-- Independently specified per-prime mass of the complete geometric tail. -/
def primeHigherMass (p : Nat.Primes) : ℝ :=
  Real.log ((p : ℕ) : ℝ) * primeRatio p ^ 3 * (1 - primeRatio p)⁻¹

/-- The per-prime infinite series has its exact geometric sum, including offset zero. -/
theorem prime_higherAtomWeight_hasSum (p : Nat.Primes) :
    HasSum (fun j : ℕ => higherAtomWeight (p, j)) (primeHigherMass p) := by
  have hs := (hasSum_geometric_of_lt_one (primeRatio_nonneg p) (primeRatio_lt_one p)).mul_left
    (Real.log ((p : ℕ) : ℝ) * primeRatio p ^ 3)
  convert hs using 1
  funext j
  simp only [higherAtomWeight, higherAtomExponent, pow_add]
  ring

theorem prime_higherAtomWeight_summable (p : Nat.Primes) :
    Summable (fun j : ℕ => higherAtomWeight (p, j)) :=
  (prime_higherAtomWeight_hasSum p).summable

theorem primeHigherMass_nonneg (p : Nat.Primes) : 0 ≤ primeHigherMass p := by
  rw [← (prime_higherAtomWeight_hasSum p).tsum_eq]
  exact tsum_nonneg fun j => higherAtomWeight_nonneg (p, j)

/-- The prime tail has a summable all-natural p-series envelope. -/
theorem primeHigherMass_le_pseries (p : Nat.Primes) :
    primeHigherMass p ≤ 16 * ((p : ℕ) : ℝ) ^ (-(5 : ℝ) / 4) := by
  have hp0 : 0 < ((p : ℕ) : ℝ) := by exact_mod_cast p.property.pos
  have hp1 : (1 : ℝ) ≤ (p : ℕ) := by exact_mod_cast p.property.one_le
  have hl := Real.log_nonneg hp1
  have hr := primeRatio_nonneg p
  have hi : (1 - primeRatio p)⁻¹ ≤ 4 := by
    rw [inv_le_iff_one_le_mul₀ (by linarith [primeRatio_le_three_quarters p] :
      0 < 1 - primeRatio p)]
    linarith [primeRatio_le_three_quarters p]
  have hlog := Real.log_le_rpow_div hp0.le (by norm_num : (0 : ℝ) < 1 / 4)
  calc
    primeHigherMass p ≤ Real.log ((p : ℕ) : ℝ) * primeRatio p ^ 3 * 4 :=
      mul_le_mul_of_nonneg_left hi (mul_nonneg hl (pow_nonneg hr 3))
    _ ≤ (((p : ℕ) : ℝ) ^ ((1 : ℝ) / 4) / (1 / 4)) * primeRatio p ^ 3 * 4 :=
      mul_le_mul_of_nonneg_right hlog (by positivity)
    _ = 16 * ((p : ℕ) : ℝ) ^ (-(5 : ℝ) / 4) := by
      unfold primeRatio
      rw [← Real.rpow_mul_natCast hp0.le]
      have he : ((p : ℕ) : ℝ) ^ ((1 : ℝ) / 4) *
          ((p : ℕ) : ℝ) ^ ((-(1 : ℝ) / 2) * (3 : ℕ)) =
          ((p : ℕ) : ℝ) ^ (-(5 : ℝ) / 4) := by
        rw [← Real.rpow_add hp0]
        congr 1
        norm_num
      calc
        _ = 16 * (((p : ℕ) : ℝ) ^ ((1 : ℝ) / 4) *
            ((p : ℕ) : ℝ) ^ ((-(1 : ℝ) / 2) * (3 : ℕ))) := by ring
        _ = _ := by rw [he]

/-- Restricting the established all-natural p-series to prime bases preserves summability. -/
theorem primePSeries_summable :
    Summable (fun p : Nat.Primes => 16 * ((p : ℕ) : ℝ) ^ (-(5 : ℝ) / 4)) := by
  have hs := higherPrimePowerBudget_summability.comp_injective Nat.Primes.coe_nat_injective
  simpa only [Function.comp_def] using hs.mul_left 16

theorem primeHigherMass_summable : Summable primeHigherMass :=
  Summable.of_nonneg_of_le primeHigherMass_nonneg primeHigherMass_le_pseries primePSeries_summable

/-- All prime bases and all higher exponents are jointly summable, before any baseline is used. -/
theorem higherAtomWeight_summable : Summable higherAtomWeight := by
  apply (summable_prod_of_nonneg higherAtomWeight_nonneg).2
  refine ⟨prime_higherAtomWeight_summable, ?_⟩
  simpa only [(prime_higherAtomWeight_hasSum _).tsum_eq] using primeHigherMass_summable

/-- Complete independent higher-sector baseline, with no source or arithmetic truncation. -/
def higherBaseline : ℝ := ∑' i : HigherPrimePowerIndex, higherAtomWeight i

theorem higherBaseline_eq_primeMass : higherBaseline = ∑' p : Nat.Primes, primeHigherMass p := by
  rw [higherBaseline, higherAtomWeight_summable.tsum_prod' prime_higherAtomWeight_summable]
  congr 1
  funext p
  exact (prime_higherAtomWeight_hasSum p).tsum_eq

theorem higherBaseline_nonneg : 0 ≤ higherBaseline :=
  tsum_nonneg higherAtomWeight_nonneg

/-- The first legitimate higher atom already has positive coefficient. -/
theorem higher_two_cube_weight_pos :
    0 < higherAtomWeight (⟨2, Nat.prime_two⟩, 0) :=
  higherAtomWeight_pos _

theorem higherBaseline_pos : 0 < higherBaseline :=
  higherAtomWeight_summable.tsum_pos higherAtomWeight_nonneg (⟨2, Nat.prime_two⟩, 0)
    higher_two_cube_weight_pos

/-- The independent all-prime-base baseline is bounded by the explicit natural p-series. -/
theorem higherBaseline_le_pseries :
    higherBaseline ≤ 16 * ∑' n : ℕ, (n : ℝ) ^ (-(5 : ℝ) / 4) := by
  rw [higherBaseline_eq_primeMass]
  have hnatural := higherPrimePowerBudget_summability.mul_left (16 : ℝ)
  have hs := Summable.tsum_le_tsum_of_inj (fun p : Nat.Primes => (p : ℕ))
    Nat.Primes.coe_nat_injective
    (fun n _ => mul_nonneg (by norm_num) (Real.rpow_nonneg n.cast_nonneg _))
    primeHigherMass_le_pseries primeHigherMass_summable hnatural
  simpa only [tsum_mul_left] using hs

/-- The existing higher-power budget supplies this mass bound without a source hypothesis. -/
theorem higherBaseline_le_budget : higherBaseline ≤ higherPrimePowerBudget :=
  higherBaseline_le_pseries

end FormalResearch.RiemannHypothesis.SourceHigherPrimePowerCoefficients
