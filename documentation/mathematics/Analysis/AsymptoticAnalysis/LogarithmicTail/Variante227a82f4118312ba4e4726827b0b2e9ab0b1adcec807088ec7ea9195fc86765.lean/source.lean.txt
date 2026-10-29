-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.PositivePrefix.Variante5a0e517dc6644c526b6c007818cd4cbac0fbcc1f5f338ee1679c2d58b229871","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e5a0e517dc6644c526b6c007818cd4cbac0fbcc1f5f338ee1679c2d58b229871","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.PositivePrefix.Variante5a0e517dc6644c526b6c007818cd4cbac0fbcc1f5f338ee1679c2d58b229871","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"e5a0e517dc6644c526b6c007818cd4cbac0fbcc1f5f338ee1679c2d58b229871","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-tandem-01a1149a/decoder-audit/current-replay/LogarithmicTail.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceZeroTail
import Mathlib.Analysis.SpecificLimits.Normed
import Mathlib.Tactic

/-! Existing #326: sharper actual occurrence-height tail, conditional on the
literal positive-height counting bound. Research direction grwtsk contributors;
paper continuation ChatGPT; scratch proof and independent review OpenAI Codex.
No actual counting instance, signed-head witness or RH result is supplied. -/

namespace GRWTSK.Analysis.AsymptoticAnalysis.PositivePrefix.Variante5a0e517dc6644c526b6c007818cd4cbac0fbcc1f5f338ee1679c2d58b229871

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.LogarithmicTail
open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroObject ZeroSummability
open ContinuousResearch.SourceZeroTail

/-- Closed positive-height prefix with every analytic-multiplicity slot. -/
def PositivePrefix (t : ℝ) :=
  {o : ZeroOccurrence // 0 < (shiftedValue o).im ∧ (shiftedValue o).im ≤ t}

theorem positivePrefix_finite (t : ℝ) : Finite (PositivePrefix t) := by
  have := heightRetained_finite t
  let f : PositivePrefix t → HeightRetained t := fun o =>
    ⟨o.val, by rw [abs_of_pos o.property.1]; exact o.property.2⟩
  apply Finite.of_injective f
  intro x y h
  exact Subtype.ext (congrArg (fun z : HeightRetained t => z.val) h)

/-- Count of actual occurrences, not distinct zero points. -/
def positiveCount (t : ℝ) : ℝ := Nat.card (PositivePrefix t)

/-- The sharper input is explicit; the existing quartic count does not prove it. -/
def PositiveCountBound (C : ℝ) : Prop :=
  0 < C ∧ ∀ t : ℝ, 2 ≤ t → positiveCount t ≤ C*t*Real.log t

/-- The positive/negative closed prefix omits ordinate zero only. -/
def NonzeroPrefix (t : ℝ) :=
  {o : ZeroOccurrence // 0 < |(shiftedValue o).im| ∧ |(shiftedValue o).im| ≤ t}

def positiveSignMap (t : ℝ) : NonzeroPrefix t → PositivePrefix t × Bool := fun o =>
  if h : 0 < (shiftedValue o.val).im then
    (⟨o.val, h, by simpa only [abs_of_pos h] using o.property.2⟩, true)
  else
    (⟨conjugateOccurrence o.val, by
      rw [shiftedValue_conjugate, Complex.conj_im]
      have hn : (shiftedValue o.val).im < 0 :=
        lt_of_le_of_ne (le_of_not_gt h) (abs_pos.mp o.property.1)
      exact neg_pos.mpr hn, by
      rw [shiftedValue_conjugate, Complex.conj_im]
      have hn : (shiftedValue o.val).im < 0 :=
        lt_of_le_of_ne (le_of_not_gt h) (abs_pos.mp o.property.1)
      simpa only [abs_of_neg hn] using o.property.2⟩, false)

theorem positiveSignMap_injective (t : ℝ) : Function.Injective (positiveSignMap t) := by
  let g : PositivePrefix t × Bool → ZeroOccurrence := fun p =>
    if p.2 then p.1.val else conjugateOccurrence p.1.val
  have hg : ∀ o : NonzeroPrefix t, g (positiveSignMap t o) = o.val := by
    intro o
    unfold positiveSignMap
    split_ifs
    · simp [g]
    · simpa [g] using conjugateOccurrence_involutive o.val
  intro x y h
  apply Subtype.ext
  rw [← hg x, ← hg y, h]

theorem nonzeroPrefix_card_le (t : ℝ) :
    (Nat.card (NonzeroPrefix t) : ℝ) ≤ 2*positiveCount t := by
  have := positivePrefix_finite t
  have h := Nat.card_le_card_of_injective (positiveSignMap t) (positiveSignMap_injective t)
  have hn : Nat.card (NonzeroPrefix t) ≤ 2*Nat.card (PositivePrefix t) := by
    simpa [Nat.card_prod, Nat.mul_comm] using h
  change (Nat.card (NonzeroPrefix t) : ℝ) ≤ 2*(Nat.card (PositivePrefix t) : ℝ)
  exact_mod_cast hn

/-- Exact geometric coefficient, with genuine HasSum before using tsum. -/
theorem dyadic_coefficient_hasSum :
    HasSum (fun k : ℕ => ((k:ℝ)+2)*(1/32:ℝ)^k) (2016/961:ℝ) := by
  have hnorm : ‖(1/32:ℝ)‖ < 1 := by norm_num
  have h1 := hasSum_coe_mul_geometric_of_norm_lt_one hnorm
  have h2 := (hasSum_geometric_of_norm_lt_one hnorm).mul_left (2:ℝ)
  convert h1.add h2 using 1 <;> first | rfl | (funext k; ring) | norm_num

theorem dyadic_coefficient_tsum :
    4*(∑' k : ℕ, ((k:ℝ)+2)*(1/32:ℝ)^k) = (8064/961:ℝ) := by
  rw [dyadic_coefficient_hasSum.tsum_eq]
  norm_num

theorem dyadic_upper_exists {T : ℝ} (hT : 0 < T) (o : HeightTail T) :
    ∃ k : ℕ, |(shiftedValue o.val).im| ≤ (2:ℝ)^(k+1)*T := by
  obtain ⟨k, hk⟩ := pow_unbounded_of_one_lt
    (|(shiftedValue o.val).im|/T) (by norm_num : (1:ℝ)<2)
  have hb : |(shiftedValue o.val).im| < (2:ℝ)^k*T :=
    (div_lt_iff₀ hT).mp hk
  refine ⟨k, ?_⟩
  rw [pow_succ]
  nlinarith [pow_pos (by norm_num : (0:ℝ)<2) k]

/-- Least closed upper endpoint; exact powers of two belong to the lower shell. -/
def dyadicIndex (T : ℝ) (hT : 0 < T) (o : HeightTail T) : ℕ :=
  Nat.find (dyadic_upper_exists hT o)

theorem dyadicIndex_bounds {T : ℝ} (hT : 0 < T) (o : HeightTail T) :
    (2:ℝ)^(dyadicIndex T hT o)*T < |(shiftedValue o.val).im| ∧
      |(shiftedValue o.val).im| ≤ (2:ℝ)^(dyadicIndex T hT o+1)*T := by
  refine ⟨?_, Nat.find_spec (dyadic_upper_exists hT o)⟩
  by_cases hz : dyadicIndex T hT o = 0
  · simpa [hz] using o.property
  · have hn : 1 ≤ dyadicIndex T hT o := by omega
    have hlt : dyadicIndex T hT o-1 < dyadicIndex T hT o := by omega
    have hm := Nat.find_min (dyadic_upper_exists hT o) hlt
    simpa only [Nat.sub_add_cancel hn, not_le] using hm

/-- Fibers of the source's strict-tail occurrence partition. -/
def DyadicShell (T : ℝ) (hT : 0 < T) (k : ℕ) :=
  (dyadicIndex T hT) ⁻¹' {k}

def shellToPrefix (T : ℝ) (hT : 0 < T) (k : ℕ) :
    DyadicShell T hT k → NonzeroPrefix ((2:ℝ)^(k+1)*T) := fun o =>
  ⟨o.val.val, by
    refine ⟨hT.trans o.val.property, ?_⟩
    have hi : dyadicIndex T hT o.val = k := o.property
    simpa only [hi] using (dyadicIndex_bounds hT o.val).2⟩

theorem shellToPrefix_injective (T : ℝ) (hT : 0 < T) (k : ℕ) :
    Function.Injective (shellToPrefix T hT k) := by
  intro x y h
  apply Subtype.ext
  apply Subtype.ext
  exact congrArg (fun z : NonzeroPrefix ((2:ℝ)^(k+1)*T) => z.val) h

theorem nonzeroPrefix_finite (t : ℝ) : Finite (NonzeroPrefix t) := by
  have := positivePrefix_finite t
  exact Finite.of_injective (positiveSignMap t) (positiveSignMap_injective t)

theorem dyadicShell_finite (T : ℝ) (hT : 0 < T) (k : ℕ) :
    Finite (DyadicShell T hT k) := by
  have := nonzeroPrefix_finite ((2:ℝ)^(k+1)*T)
  exact Finite.of_injective (shellToPrefix T hT k) (shellToPrefix_injective T hT k)

/-- Both ordinate signs are counted through actual slot-preserving conjugation. -/
theorem dyadicShell_card_le {C T : ℝ} (hc : PositiveCountBound C) (hT : 2 ≤ T)
    (k : ℕ) :
    (Nat.card (DyadicShell T (by linarith) k) : ℝ) ≤
      4*C*(2:ℝ)^k*T*((k:ℝ)+2)*Real.log T := by
  have hp : 0 < T := by linarith
  have hC : 0 < C := hc.1
  have hu : 2 ≤ (2:ℝ)^(k+1)*T := by
    have hw : (1:ℝ) ≤ (2:ℝ)^(k+1) := one_le_pow₀ (by norm_num)
    nlinarith
  have := nonzeroPrefix_finite ((2:ℝ)^(k+1)*T)
  have hcard : (Nat.card (DyadicShell T hp k) : ℝ) ≤
      Nat.card (NonzeroPrefix ((2:ℝ)^(k+1)*T)) := by
    exact_mod_cast Nat.card_le_card_of_injective
      (shellToPrefix T hp k) (shellToPrefix_injective T hp k)
  have hb := hcard.trans (nonzeroPrefix_card_le ((2:ℝ)^(k+1)*T))
  have hcount := mul_le_mul_of_nonneg_left (hc.2 _ hu) (by norm_num : (0:ℝ)≤2)
  have hlog : Real.log 2 ≤ Real.log T := Real.log_le_log (by norm_num) hT
  have hlogu : Real.log ((2:ℝ)^(k+1)*T) =
      Real.log T+((k:ℝ)+1)*Real.log 2 := by
    rw [Real.log_mul (by positivity) hp.ne', Real.log_pow]
    push_cast
    ring
  have hl : Real.log ((2:ℝ)^(k+1)*T) ≤ ((k:ℝ)+2)*Real.log T := by
    rw [hlogu]
    have hm := mul_le_mul_of_nonneg_left hlog (by positivity : (0:ℝ)≤(k:ℝ)+1)
    linarith
  calc
    _ ≤ 2*(C*((2:ℝ)^(k+1)*T)*Real.log ((2:ℝ)^(k+1)*T)) := hb.trans hcount
    _ ≤ 2*(C*((2:ℝ)^(k+1)*T)*(((k:ℝ)+2)*Real.log T)) := by
      gcongr
    _ = _ := by rw [pow_succ]; ring

def sixthWeight (o : ZeroOccurrence) : ℝ := 1/|(shiftedValue o).im|^6

theorem sixthWeight_tail_summable (T : ℝ) (hT : 2 ≤ T) :
    Summable (fun o : HeightTail T => sixthWeight o.val) := by
  have hs : Summable (fun o : HeightTail T =>
      64*(1+‖shiftedValue o.val‖)^(-6:ℝ)) := by
    exact (ZeroShellCount.zero_summability.mul_left (64:ℝ)).subtype
      {o : ZeroOccurrence | T < |(shiftedValue o).im|}
  apply Summable.of_nonneg_of_le (fun o => by unfold sixthWeight; positivity) ?_ hs
  intro o
  have ho : T < |(shiftedValue o.val).im| := o.property
  have hy : 0 < |(shiftedValue o.val).im| := by linarith
  have hn := Complex.norm_le_abs_re_add_abs_im (shiftedValue o.val)
  have hr : |(shiftedValue o.val).re| ≤ (1/2:ℝ) :=
    abs_le.mpr ⟨(shiftedValue_strip o.val).1.le, (shiftedValue_strip o.val).2.le⟩
  have hh : 1+‖shiftedValue o.val‖ ≤ 2*|(shiftedValue o.val).im| := by
    linarith
  have hw := pow_le_pow_left₀ (by positivity : (0:ℝ)≤1+‖shiftedValue o.val‖) hh 6
  change 1/|(shiftedValue o.val).im|^6 ≤ 64*(1+‖shiftedValue o.val‖)^(-6:ℝ)
  rw [Real.rpow_neg (by positivity), Real.rpow_ofNat]
  rw [← div_eq_mul_inv]
  apply (div_le_div_iff₀ (by positivity) (by positivity)).2
  nlinarith [show (2*|(shiftedValue o.val).im|)^6 = 64*|(shiftedValue o.val).im|^6 by ring]

theorem dyadic_sixth_sum_le {C T : ℝ} (hc : PositiveCountBound C) (hT : 2 ≤ T)
    (k : ℕ) :
    (∑' o : DyadicShell T (by linarith) k, sixthWeight o.val.val) ≤
      (4*C*Real.log T/T^5)*(((k:ℝ)+2)*(1/32:ℝ)^k) := by
  have hp : 0 < T := by linarith
  have hC : 0 < C := hc.1
  have hw : 0 < (2:ℝ)^k*T := by positivity
  have hpoint (o : DyadicShell T hp k) :
      sixthWeight o.val.val ≤ 1/((2:ℝ)^k*T)^6 := by
    have hi : dyadicIndex T hp o.val = k := o.property
    have hb := (dyadicIndex_bounds hp o.val).1
    rw [hi] at hb
    unfold sixthWeight
    exact one_div_le_one_div_of_le (by positivity)
      (pow_le_pow_left₀ (by positivity) hb.le 6)
  have := dyadicShell_finite T hp k
  let := Fintype.ofFinite (DyadicShell T hp k)
  calc
    _ ≤ ∑' _o : DyadicShell T hp k, 1/((2:ℝ)^k*T)^6 :=
      Summable.tsum_le_tsum hpoint Summable.of_finite Summable.of_finite
    _ = (Nat.card (DyadicShell T hp k):ℝ)*(1/((2:ℝ)^k*T)^6) := by
      simp [tsum_fintype, Nat.card_eq_fintype_card]
    _ ≤ (4*C*(2:ℝ)^k*T*((k:ℝ)+2)*Real.log T)*(1/((2:ℝ)^k*T)^6) :=
      mul_le_mul_of_nonneg_right (dyadicShell_card_le hc hT k) (by positivity)
    _ = _ := by
      have hpow : ((2:ℝ)^k)^6 = (64:ℝ)^k := by
        rw [← pow_mul, Nat.mul_comm k 6, pow_mul]
        norm_num
      have hr : (1/32:ℝ)^k = (2:ℝ)^k/(64:ℝ)^k := by
        rw [← div_pow]
        norm_num
      rw [mul_pow, hpow, hr]
      field_simp

/-- Literal actual occurrence sixth moment, conditional on the sharper count. -/
theorem actual_sixth_tail_bound {C T : ℝ} (hc : PositiveCountBound C) (hT : 2 ≤ T) :
    (∑' o : HeightTail T, sixthWeight o.val) ≤ (8064/961:ℝ)*C*Real.log T/T^5 := by
  have hp : 0 < T := by linarith
  have hs := sixthWeight_tail_summable T hT
  have hpart : HasSum
      (fun k : ℕ => ∑' o : DyadicShell T hp k, sixthWeight o.val.val)
      (∑' o : HeightTail T, sixthWeight o.val) := by
    convert hs.hasSum.tsum_fiberwise (dyadicIndex T hp) using 1 <;> rfl
  have hm := dyadic_coefficient_hasSum.summable.mul_left (4*C*Real.log T/T^5)
  calc
    _ = ∑' k : ℕ, ∑' o : DyadicShell T hp k, sixthWeight o.val.val := hpart.tsum_eq.symm
    _ ≤ ∑' k : ℕ, (4*C*Real.log T/T^5)*(((k:ℝ)+2)*(1/32:ℝ)^k) :=
      Summable.tsum_le_tsum (dyadic_sixth_sum_le hc hT) hpart.summable hm
    _ = _ := by rw [tsum_mul_left, dyadic_coefficient_hasSum.tsum_eq]; ring

theorem actual_sixth_tail_bound_coarse {C T : ℝ} (hc : PositiveCountBound C) (hT : 2 ≤ T) :
    (∑' o : HeightTail T, sixthWeight o.val) ≤ 9*C*Real.log T/T^5 := by
  have hC : 0 < C := hc.1
  have hlog : 0 ≤ Real.log T := Real.log_nonneg (by linarith)
  apply (actual_sixth_tail_bound hc hT).trans
  gcongr
  norm_num

#print axioms dyadic_sixth_sum_le
#print axioms actual_sixth_tail_bound
#print axioms actual_sixth_tail_bound_coarse

#print axioms dyadic_upper_exists
#print axioms dyadicIndex
#print axioms dyadicIndex_bounds
#print axioms DyadicShell
#print axioms shellToPrefix
#print axioms shellToPrefix_injective
#print axioms nonzeroPrefix_finite
#print axioms dyadicShell_finite
#print axioms dyadicShell_card_le
#print axioms sixthWeight
#print axioms sixthWeight_tail_summable

#print axioms PositivePrefix
#print axioms positivePrefix_finite
#print axioms positiveCount
#print axioms PositiveCountBound
#print axioms NonzeroPrefix
#print axioms positiveSignMap
#print axioms positiveSignMap_injective
#print axioms nonzeroPrefix_card_le
#print axioms dyadic_coefficient_hasSum
#print axioms dyadic_coefficient_tsum
end ContinuousResearch.LogarithmicTail
