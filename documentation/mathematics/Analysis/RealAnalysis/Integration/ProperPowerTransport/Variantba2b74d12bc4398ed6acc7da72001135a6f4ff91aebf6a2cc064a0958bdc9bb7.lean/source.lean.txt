-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.PowerOnset.Variant1c74add1efaf2e31efab4ab8f9e9408cec66a5c1287bb427105c01d87ba5ff82","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1c74add1efaf2e31efab4ab8f9e9408cec66a5c1287bb427105c01d87ba5ff82","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.PowerOnset.Variant1c74add1efaf2e31efab4ab8f9e9408cec66a5c1287bb427105c01d87ba5ff82","mathematical_subject":"Analysis.Integration","original_sha256":"1c74add1efaf2e31efab4ab8f9e9408cec66a5c1287bb427105c01d87ba5ff82","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass19/proper_power_transport/ProperPowerTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ProperPowerMoments
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.MeasureTheory.Constructions.Polish.Basic

/-! Actual proper-power integral and closed-onset complement transport.
Direction grwtsk contributors; focused scratch proof OpenAI Codex.
The weighted Mangoldt/source-prefix dictionary and Laurent/c/Ramare bridges remain separate. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.PowerOnset.Variant1c74add1efaf2e31efab4ab8f9e9408cec66a5c1287bb427105c01d87ba5ff82

set_option autoImplicit false
set_option maxHeartbeats 800000
noncomputable section
namespace ContinuousResearch.ProperPowerTransport
open MeasureTheory Set Filter
open scoped Topology
open ContinuousResearch.ProperPowerMoments

def powerOnset (p : Nat.Primes) (k : ℕ) : ℝ :=
  ((k+2:ℕ):ℝ)*Real.log (p.val:ℝ)

def powerWeight (p : Nat.Primes) (k : ℕ) : ℝ :=
  Real.log (p.val:ℝ)/(p.val:ℝ)^(k+2)

def positiveOnsetAtom (p : Nat.Primes) (k : ℕ) : ℝ → ℝ :=
  (Ioo 0 (powerOnset p k)).indicator (fun _ => powerWeight p k)

def positiveOnsetTail (t : ℝ) : ℝ :=
  ∑' pk : Nat.Primes×ℕ, positiveOnsetAtom pk.1 pk.2 t

theorem powerOnset_pos (p : Nat.Primes) (k : ℕ) : 0<powerOnset p k := by
  unfold powerOnset
  exact mul_pos (by positivity) (Real.log_pos (by exact_mod_cast p.property.one_lt))

theorem powerWeight_nonneg (p : Nat.Primes) (k : ℕ) : 0≤powerWeight p k := by
  have hl := Real.log_nonneg (show (1:ℝ)≤p.val by exact_mod_cast p.property.one_le)
  unfold powerWeight
  positivity

theorem positiveOnsetAtom_nonneg (p : Nat.Primes) (k : ℕ) (t : ℝ) :
    0≤positiveOnsetAtom p k t := by
  exact indicator_nonneg (fun _ _ => powerWeight_nonneg p k) t

theorem positiveOnsetAtom_measurable (p : Nat.Primes) (k : ℕ) :
    Measurable (positiveOnsetAtom p k) :=
  measurable_const.indicator measurableSet_Ioo

theorem positiveOnsetAtom_integrable (p : Nat.Primes) (k : ℕ) :
    Integrable (positiveOnsetAtom p k) := by
  unfold positiveOnsetAtom
  exact (integrableOn_const (C:=powerWeight p k)
    (by simp : volume (Ioo 0 (powerOnset p k)) ≠ ⊤)).integrable_indicator
    measurableSet_Ioo

theorem positiveOnsetAtom_integral (p : Nat.Primes) (k : ℕ) :
    (∫ t : ℝ, positiveOnsetAtom p k t) = primeMomentAtom 1 p k := by
  unfold positiveOnsetAtom
  rw [integral_indicator_const _ measurableSet_Ioo,
    Real.volume_real_Ioo_of_le (powerOnset_pos p k).le,sub_zero,smul_eq_mul]
  unfold powerOnset powerWeight primeMomentAtom momentAtom
  ring

theorem positiveOnsetAtom_eq_omitted (p : Nat.Primes) (k : ℕ) (t : ℝ) :
    positiveOnsetAtom p k t = if 0<t then omittedOnsetAtom t p k else 0 := by
  unfold positiveOnsetAtom powerOnset powerWeight omittedOnsetAtom
  simp only [indicator_apply,mem_Ioo]
  by_cases h0 : 0<t
  · simp only [h0,true_and,if_true]
  · simp only [h0,false_and,if_false]

theorem positiveOnsetAtom_le_zeroMoment (p : Nat.Primes) (k : ℕ) (t : ℝ) :
    positiveOnsetAtom p k t ≤ primeMomentAtom 0 p k := by
  rw [positiveOnsetAtom_eq_omitted]
  split_ifs
  · exact omittedOnsetAtom_le_zeroMoment t p k
  · exact momentAtom_nonneg 0 p.val k

theorem positiveOnsetTail_summable (t : ℝ) :
    Summable (fun pk : Nat.Primes×ℕ => positiveOnsetAtom pk.1 pk.2 t) :=
  Summable.of_nonneg_of_le (fun pk => positiveOnsetAtom_nonneg pk.1 pk.2 t)
    (fun pk => positiveOnsetAtom_le_zeroMoment pk.1 pk.2 t) (primeMomentAtom_summable 0)

theorem positiveOnsetTail_nonneg (t : ℝ) : 0≤positiveOnsetTail t :=
  tsum_nonneg (fun pk => positiveOnsetAtom_nonneg pk.1 pk.2 t)

theorem positiveOnsetTail_measurable : Measurable positiveOnsetTail :=
  Measurable.tsum (fun pk : Nat.Primes×ℕ => positiveOnsetAtom_measurable pk.1 pk.2)

theorem positiveOnsetTail_eq_indicator :
    positiveOnsetTail = (Ioi 0).indicator omittedOnsetTail := by
  funext t
  unfold positiveOnsetTail
  simp_rw [positiveOnsetAtom_eq_omitted]
  by_cases ht : 0<t
  · simp [ht,omittedOnsetTail]
  · simp [ht]

/-- Nonnegative countable Tonelli, with the finite actual B1 sum established beforehand. -/
theorem positiveOnsetTail_lintegral :
    (∫⁻ t : ℝ, ENNReal.ofReal (positiveOnsetTail t)) = ENNReal.ofReal properPowerB1 := by
  calc
    _ = ∫⁻ t : ℝ, ∑' pk : Nat.Primes×ℕ,
        ENNReal.ofReal (positiveOnsetAtom pk.1 pk.2 t) := by
      apply lintegral_congr
      intro t
      exact ENNReal.ofReal_tsum_of_nonneg
        (fun pk => positiveOnsetAtom_nonneg pk.1 pk.2 t) (positiveOnsetTail_summable t)
    _ = ∑' pk : Nat.Primes×ℕ, ∫⁻ t : ℝ,
        ENNReal.ofReal (positiveOnsetAtom pk.1 pk.2 t) :=
      lintegral_tsum (fun pk => (positiveOnsetAtom_measurable pk.1 pk.2).ennreal_ofReal.aemeasurable)
    _ = ∑' pk : Nat.Primes×ℕ, ENNReal.ofReal (primeMomentAtom 1 pk.1 pk.2) := by
      apply tsum_congr
      intro pk
      rw [← ofReal_integral_eq_lintegral_ofReal (positiveOnsetAtom_integrable pk.1 pk.2)
        (Eventually.of_forall (positiveOnsetAtom_nonneg pk.1 pk.2)),positiveOnsetAtom_integral]
    _ = ENNReal.ofReal properPowerB1 := by
      have he := ENNReal.ofReal_tsum_of_nonneg
        (f:=fun pk : Nat.Primes×ℕ => primeMomentAtom 1 pk.1 pk.2)
        (fun pk => momentAtom_nonneg 1 pk.1.val pk.2) (primeMomentAtom_summable 1)
      rw [←he,←properPowerMoment_eq_joint_sum]
      rfl

theorem positiveOnsetTail_integrable : Integrable positiveOnsetTail := by
  refine ⟨positiveOnsetTail_measurable.aestronglyMeasurable,?_⟩
  apply (hasFiniteIntegral_iff_ofReal (Eventually.of_forall positiveOnsetTail_nonneg)).mpr
  rw [positiveOnsetTail_lintegral]
  exact ENNReal.ofReal_lt_top

theorem positiveOnsetTail_integral : (∫ t : ℝ, positiveOnsetTail t) = properPowerB1 := by
  have he := (ofReal_integral_eq_lintegral_ofReal positiveOnsetTail_integrable
    (Eventually.of_forall positiveOnsetTail_nonneg)).trans positiveOnsetTail_lintegral
  have h := congrArg ENNReal.toReal he
  simpa only [ENNReal.toReal_ofReal (integral_nonneg positiveOnsetTail_nonneg),
    ENNReal.toReal_ofReal (show 0≤properPowerB1 from properPowerMoment_nonneg 1)] using h

theorem omittedOnsetTail_integrable_positive : IntegrableOn omittedOnsetTail (Ioi 0) := by
  apply (integrable_indicator_iff measurableSet_Ioi).mp
  rw [←positiveOnsetTail_eq_indicator]
  exact positiveOnsetTail_integrable

theorem omittedOnsetTail_integral_eq_B1 :
    (∫ t in Ioi 0, omittedOnsetTail t) = properPowerB1 := by
  rw [←integral_indicator measurableSet_Ioi,←positiveOnsetTail_eq_indicator]
  exact positiveOnsetTail_integral

/-- Independently defined complete closed proper-power onset prefix. -/
def closedOnsetAtom (t : ℝ) (p : Nat.Primes) (k : ℕ) : ℝ :=
  if powerOnset p k ≤ t then powerWeight p k else 0

def closedOnsetPrefix (t : ℝ) : ℝ :=
  ∑' pk : Nat.Primes×ℕ, closedOnsetAtom t pk.1 pk.2

theorem closedOnsetAtom_nonneg (t : ℝ) (p : Nat.Primes) (k : ℕ) :
    0≤closedOnsetAtom t p k := by
  unfold closedOnsetAtom
  split_ifs
  · exact powerWeight_nonneg p k
  · exact le_rfl

theorem closedOnsetAtom_le_zeroMoment (t : ℝ) (p : Nat.Primes) (k : ℕ) :
    closedOnsetAtom t p k ≤ primeMomentAtom 0 p k := by
  unfold closedOnsetAtom
  split_ifs
  · simp [powerWeight,primeMomentAtom,momentAtom]
  · exact momentAtom_nonneg 0 p.val k

theorem closedOnsetPrefix_summable (t : ℝ) :
    Summable (fun pk : Nat.Primes×ℕ => closedOnsetAtom t pk.1 pk.2) :=
  Summable.of_nonneg_of_le (fun pk => closedOnsetAtom_nonneg t pk.1 pk.2)
    (fun pk => closedOnsetAtom_le_zeroMoment t pk.1 pk.2) (primeMomentAtom_summable 0)

theorem closedOnsetAtom_add_omitted (t : ℝ) (p : Nat.Primes) (k : ℕ) :
    closedOnsetAtom t p k + omittedOnsetAtom t p k = primeMomentAtom 0 p k := by
  unfold closedOnsetAtom omittedOnsetAtom powerOnset powerWeight primeMomentAtom momentAtom
  by_cases h : ↑(k+2)*Real.log (p.val:ℝ) ≤ t
  · simp only [h,if_true,not_lt.mpr h,if_false,pow_zero,one_mul,zero_add,pow_one,add_zero]
  · simp only [h,if_false,lt_of_not_ge h,if_true,pow_zero,one_mul,pow_one,zero_add]

theorem closedOnsetPrefix_add_tail (t : ℝ) :
    closedOnsetPrefix t + omittedOnsetTail t = properPowerMoment 0 := by
  unfold closedOnsetPrefix omittedOnsetTail
  rw [← (closedOnsetPrefix_summable t).tsum_add (omittedOnsetTail_summable t),
    properPowerMoment_eq_joint_sum]
  exact tsum_congr (fun pk => closedOnsetAtom_add_omitted t pk.1 pk.2)

theorem properPowerMoment_sub_closedPrefix (t : ℝ) :
    properPowerMoment 0 - closedOnsetPrefix t = omittedOnsetTail t := by
  linarith [closedOnsetPrefix_add_tail t]

theorem closedOnsetAtom_touching (p : Nat.Primes) (k : ℕ) :
    closedOnsetAtom (powerOnset p k) p k = powerWeight p k ∧
      omittedOnsetAtom (powerOnset p k) p k = 0 := by
  simp [closedOnsetAtom,omittedOnsetAtom,powerOnset]

theorem powerOnset_ge_first (p : Nat.Primes) (k : ℕ) :
    2*Real.log 2 ≤ powerOnset p k := by
  have hl : Real.log (2:ℝ) ≤ Real.log (p.val:ℝ) :=
    Real.log_le_log (by norm_num) (by exact_mod_cast p.property.two_le)
  have hc : (2:ℝ)≤((k+2:ℕ):ℝ) := by exact_mod_cast (show 2≤k+2 by omega)
  exact mul_le_mul hc hl (Real.log_nonneg (by norm_num)) (by positivity)

theorem closedOnsetPrefix_below_first {t : ℝ} (ht : t < 2*Real.log 2) :
    closedOnsetPrefix t = 0 := by
  unfold closedOnsetPrefix
  have hz (pk : Nat.Primes×ℕ) : closedOnsetAtom t pk.1 pk.2 = 0 := by
    unfold closedOnsetAtom
    exact if_neg (not_le.mpr (ht.trans_le (powerOnset_ge_first pk.1 pk.2)))
  simp only [hz,tsum_zero]

theorem omittedOnsetTail_below_first {t : ℝ} (ht : t < 2*Real.log 2) :
    omittedOnsetTail t = properPowerMoment 0 := by
  have h := closedOnsetPrefix_add_tail t
  rw [closedOnsetPrefix_below_first ht,zero_add] at h
  exact h

end ContinuousResearch.ProperPowerTransport


#check ContinuousResearch.ProperPowerTransport.powerOnset
#print axioms ContinuousResearch.ProperPowerTransport.powerOnset
#print ContinuousResearch.ProperPowerTransport.powerOnset

#check ContinuousResearch.ProperPowerTransport.powerWeight
#print axioms ContinuousResearch.ProperPowerTransport.powerWeight
#print ContinuousResearch.ProperPowerTransport.powerWeight

#check ContinuousResearch.ProperPowerTransport.positiveOnsetAtom
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetAtom
#print ContinuousResearch.ProperPowerTransport.positiveOnsetAtom

#check ContinuousResearch.ProperPowerTransport.positiveOnsetTail
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetTail
#print ContinuousResearch.ProperPowerTransport.positiveOnsetTail

#check ContinuousResearch.ProperPowerTransport.powerOnset_pos
#print axioms ContinuousResearch.ProperPowerTransport.powerOnset_pos
#print ContinuousResearch.ProperPowerTransport.powerOnset_pos

#check ContinuousResearch.ProperPowerTransport.powerWeight_nonneg
#print axioms ContinuousResearch.ProperPowerTransport.powerWeight_nonneg
#print ContinuousResearch.ProperPowerTransport.powerWeight_nonneg

#check ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_nonneg
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_nonneg
#print ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_nonneg

#check ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_measurable
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_measurable
#print ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_measurable

#check ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_integrable
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_integrable
#print ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_integrable

#check ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_integral
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_integral
#print ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_integral

#check ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_eq_omitted
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_eq_omitted
#print ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_eq_omitted

#check ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_le_zeroMoment
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_le_zeroMoment
#print ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_le_zeroMoment

#check ContinuousResearch.ProperPowerTransport.positiveOnsetTail_summable
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetTail_summable
#print ContinuousResearch.ProperPowerTransport.positiveOnsetTail_summable

#check ContinuousResearch.ProperPowerTransport.positiveOnsetTail_nonneg
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetTail_nonneg
#print ContinuousResearch.ProperPowerTransport.positiveOnsetTail_nonneg

#check ContinuousResearch.ProperPowerTransport.positiveOnsetTail_measurable
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetTail_measurable
#print ContinuousResearch.ProperPowerTransport.positiveOnsetTail_measurable

#check ContinuousResearch.ProperPowerTransport.positiveOnsetTail_eq_indicator
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetTail_eq_indicator
#print ContinuousResearch.ProperPowerTransport.positiveOnsetTail_eq_indicator

#check ContinuousResearch.ProperPowerTransport.positiveOnsetTail_lintegral
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetTail_lintegral
#print ContinuousResearch.ProperPowerTransport.positiveOnsetTail_lintegral

#check ContinuousResearch.ProperPowerTransport.positiveOnsetTail_integrable
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetTail_integrable
#print ContinuousResearch.ProperPowerTransport.positiveOnsetTail_integrable

#check ContinuousResearch.ProperPowerTransport.positiveOnsetTail_integral
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetTail_integral
#print ContinuousResearch.ProperPowerTransport.positiveOnsetTail_integral

#check ContinuousResearch.ProperPowerTransport.omittedOnsetTail_integrable_positive
#print axioms ContinuousResearch.ProperPowerTransport.omittedOnsetTail_integrable_positive
#print ContinuousResearch.ProperPowerTransport.omittedOnsetTail_integrable_positive

#check ContinuousResearch.ProperPowerTransport.omittedOnsetTail_integral_eq_B1
#print axioms ContinuousResearch.ProperPowerTransport.omittedOnsetTail_integral_eq_B1
#print ContinuousResearch.ProperPowerTransport.omittedOnsetTail_integral_eq_B1

#check ContinuousResearch.ProperPowerTransport.closedOnsetAtom
#print axioms ContinuousResearch.ProperPowerTransport.closedOnsetAtom
#print ContinuousResearch.ProperPowerTransport.closedOnsetAtom

#check ContinuousResearch.ProperPowerTransport.closedOnsetPrefix
#print axioms ContinuousResearch.ProperPowerTransport.closedOnsetPrefix
#print ContinuousResearch.ProperPowerTransport.closedOnsetPrefix

#check ContinuousResearch.ProperPowerTransport.closedOnsetAtom_nonneg
#print axioms ContinuousResearch.ProperPowerTransport.closedOnsetAtom_nonneg
#print ContinuousResearch.ProperPowerTransport.closedOnsetAtom_nonneg

#check ContinuousResearch.ProperPowerTransport.closedOnsetAtom_le_zeroMoment
#print axioms ContinuousResearch.ProperPowerTransport.closedOnsetAtom_le_zeroMoment
#print ContinuousResearch.ProperPowerTransport.closedOnsetAtom_le_zeroMoment

#check ContinuousResearch.ProperPowerTransport.closedOnsetPrefix_summable
#print axioms ContinuousResearch.ProperPowerTransport.closedOnsetPrefix_summable
#print ContinuousResearch.ProperPowerTransport.closedOnsetPrefix_summable

#check ContinuousResearch.ProperPowerTransport.closedOnsetAtom_add_omitted
#print axioms ContinuousResearch.ProperPowerTransport.closedOnsetAtom_add_omitted
#print ContinuousResearch.ProperPowerTransport.closedOnsetAtom_add_omitted

#check ContinuousResearch.ProperPowerTransport.closedOnsetPrefix_add_tail
#print axioms ContinuousResearch.ProperPowerTransport.closedOnsetPrefix_add_tail
#print ContinuousResearch.ProperPowerTransport.closedOnsetPrefix_add_tail

#check ContinuousResearch.ProperPowerTransport.properPowerMoment_sub_closedPrefix
#print axioms ContinuousResearch.ProperPowerTransport.properPowerMoment_sub_closedPrefix
#print ContinuousResearch.ProperPowerTransport.properPowerMoment_sub_closedPrefix

#check ContinuousResearch.ProperPowerTransport.closedOnsetAtom_touching
#print axioms ContinuousResearch.ProperPowerTransport.closedOnsetAtom_touching
#print ContinuousResearch.ProperPowerTransport.closedOnsetAtom_touching

#check ContinuousResearch.ProperPowerTransport.powerOnset_ge_first
#print axioms ContinuousResearch.ProperPowerTransport.powerOnset_ge_first
#print ContinuousResearch.ProperPowerTransport.powerOnset_ge_first

#check ContinuousResearch.ProperPowerTransport.closedOnsetPrefix_below_first
#print axioms ContinuousResearch.ProperPowerTransport.closedOnsetPrefix_below_first
#print ContinuousResearch.ProperPowerTransport.closedOnsetPrefix_below_first

#check ContinuousResearch.ProperPowerTransport.omittedOnsetTail_below_first
#print axioms ContinuousResearch.ProperPowerTransport.omittedOnsetTail_below_first
#print ContinuousResearch.ProperPowerTransport.omittedOnsetTail_below_first
