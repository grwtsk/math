import FormalResearch.RiemannHypothesis.Conversation.CriticalTwoModeRecords
import Mathlib.Analysis.SpecificLimits.Basic

/-!
# Source-faithful increasing record clock for the literal two-frequency path

Every chosen endpoint is at least one time unit later and its actual complete
prefix maximum pays at least half the remaining height. Classical choice
selects endpoints under these exact laws; it does not replace the path or
postulate an arithmetic decoder. Heights approach the source supremum two.
The resulting full sequence prepares a native interval-width and p-energy
consumer. Human actual-record direction: grwtsk contributors. Local checked
choice and sequence construction: OpenAI Codex.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeRecordSequence
open CriticalTwoModeDiophantine CriticalTwoModeBasic CriticalTwoModeSupremum
open CriticalTwoModeRecords Filter
open scoped BigOperators Topology
noncomputable section

theorem literal_next_unit_record_exists {α t₀ T : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (hT : t₀ ≤ T) :
    ∃ U : ℝ, T+1 < U ∧
      (2-prefixMaximum α t₀ T)/2 ≤ prefixMaximum α t₀ U-prefixMaximum α t₀ T := by
  have hδ : 0 < 2-prefixMaximum α t₀ T := by
    linarith [literal_prefix_maximum_lt_two hα ht₀ hT]
  obtain ⟨U,hU,_hpos,hnear⟩ := literal_two_mode_near_two_after_every_threshold hα
    ((2-prefixMaximum α t₀ T)/2) (T+1) (by linarith)
  have hTU : T < U := by linarith
  have hval := literal_prefix_value_le α (hT.trans hTU.le) ⟨hT.trans hTU.le,le_rfl⟩
  exact ⟨U,hU,by linarith⟩

/-- The next record state in this module, with the following exact parameterization.

def nextRecordState {α t₀ : ℝ} (hα : BadlyApproximable α) (ht₀ : 0 < t₀) (T : {T : ℝ // t₀ ≤
T}) : {U : ℝ // t₀ ≤ U} := ⟨Classical.choose (literal_next_unit_record_exists hα ht₀
T.property), T.property.trans (by have h := (Classical.choose_spec
(literal_next_unit_record_exists hα ht₀ T.property)).1 linarith)⟩
-/
def nextRecordState {α t₀ : ℝ} (hα : BadlyApproximable α) (ht₀ : 0 < t₀)
    (T : {T : ℝ // t₀ ≤ T}) : {U : ℝ // t₀ ≤ U} :=
  ⟨Classical.choose (literal_next_unit_record_exists hα ht₀ T.property),
    T.property.trans (by
      have h := (Classical.choose_spec (literal_next_unit_record_exists hα ht₀ T.property)).1
      linarith)⟩

/-- The record state in this module, with the following exact parameterization.

def recordState {α t₀ : ℝ} (hα : BadlyApproximable α) (ht₀ : 0 < t₀) : ℕ → {T : ℝ // t₀ ≤ T} |
0 => ⟨t₀,le_rfl⟩ | j+1 => nextRecordState hα ht₀ (recordState hα ht₀ j)
-/
def recordState {α t₀ : ℝ} (hα : BadlyApproximable α) (ht₀ : 0 < t₀) :
    ℕ → {T : ℝ // t₀ ≤ T}
  | 0 => ⟨t₀,le_rfl⟩
  | j+1 => nextRecordState hα ht₀ (recordState hα ht₀ j)

/-- The record time in this module, with the following exact parameterization.

def recordTime {α t₀ : ℝ} (hα : BadlyApproximable α) (ht₀ : 0 < t₀) (j : ℕ) : ℝ :=
(recordState hα ht₀ j).val
-/
def recordTime {α t₀ : ℝ} (hα : BadlyApproximable α) (ht₀ : 0 < t₀) (j : ℕ) : ℝ :=
  (recordState hα ht₀ j).val

/-- The record level in this module, with the following exact parameterization.

def recordLevel {α t₀ : ℝ} (hα : BadlyApproximable α) (ht₀ : 0 < t₀) (j : ℕ) : ℝ :=
prefixMaximum α t₀ (recordTime hα ht₀ j)
-/
def recordLevel {α t₀ : ℝ} (hα : BadlyApproximable α) (ht₀ : 0 < t₀) (j : ℕ) : ℝ :=
  prefixMaximum α t₀ (recordTime hα ht₀ j)

/-- The record height in this module, with the following exact parameterization.

def recordHeight {α t₀ : ℝ} (hα : BadlyApproximable α) (ht₀ : 0 < t₀) (j : ℕ) : ℝ :=
recordLevel hα ht₀ (j+1)-recordLevel hα ht₀ j
-/
def recordHeight {α t₀ : ℝ} (hα : BadlyApproximable α) (ht₀ : 0 < t₀) (j : ℕ) : ℝ :=
  recordLevel hα ht₀ (j+1)-recordLevel hα ht₀ j

theorem literal_record_time_zero {α t₀ : ℝ} (hα : BadlyApproximable α) (ht₀ : 0 < t₀) :
    recordTime hα ht₀ 0 = t₀ := rfl

theorem literal_record_time_initial_le {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (j : ℕ) : t₀ ≤ recordTime hα ht₀ j := (recordState hα ht₀ j).property

theorem literal_record_time_unit_step {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (j : ℕ) : recordTime hα ht₀ j+1 < recordTime hα ht₀ (j+1) :=
  (Classical.choose_spec (literal_next_unit_record_exists hα ht₀ (recordState hα ht₀ j).property)).1

theorem literal_record_height_half_deficit {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (j : ℕ) : (2-recordLevel hα ht₀ j)/2 ≤ recordHeight hα ht₀ j :=
  (Classical.choose_spec (literal_next_unit_record_exists hα ht₀ (recordState hα ht₀ j).property)).2

theorem literal_record_time_linear_lower {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (j : ℕ) : t₀+(j : ℝ) ≤ recordTime hα ht₀ j := by
  induction j with
  | zero => simp only [Nat.cast_zero,add_zero,literal_record_time_zero,le_refl]
  | succ j ih =>
    have h := literal_record_time_unit_step hα ht₀ j
    rw [Nat.cast_add,Nat.cast_one]
    linarith

theorem literal_record_time_tends_to_infinity {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) : Tendsto (recordTime hα ht₀) atTop atTop := by
  apply tendsto_atTop.2
  intro B
  obtain ⟨N,hN⟩ := exists_nat_ge (B-t₀)
  filter_upwards [eventually_ge_atTop N] with j hj
  have hNj : (N : ℝ) ≤ (j : ℝ) := by exact_mod_cast hj
  have h := literal_record_time_linear_lower hα ht₀ j
  linarith

theorem literal_record_level_lt_two {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (j : ℕ) : recordLevel hα ht₀ j < 2 :=
  literal_prefix_maximum_lt_two hα ht₀ (literal_record_time_initial_le hα ht₀ j)

theorem literal_record_height_pos {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (j : ℕ) : 0 < recordHeight hα ht₀ j := by
  have h := literal_record_height_half_deficit hα ht₀ j
  have hl := literal_record_level_lt_two hα ht₀ j
  linarith

theorem literal_record_deficit_geometric_upper {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (j : ℕ) :
    2-recordLevel hα ht₀ j ≤ (2-recordLevel hα ht₀ 0)*(1/2 : ℝ)^j := by
  induction j with
  | zero => simp
  | succ j ih =>
    have h := literal_record_height_half_deficit hα ht₀ j
    unfold recordHeight at h
    rw [pow_succ]
    nlinarith

theorem literal_record_levels_tend_to_two {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) : Tendsto (recordLevel hα ht₀) atTop (𝓝 2) := by
  have hpow : Tendsto (fun j : ℕ ↦ (1/2 : ℝ)^j) atTop (𝓝 0) :=
    tendsto_pow_atTop_nhds_zero_of_lt_one (by norm_num) (by norm_num)
  have hupper : Tendsto (fun j : ℕ ↦ (2-recordLevel hα ht₀ 0)*(1/2 : ℝ)^j) atTop (𝓝 0) := by
    simpa only [mul_zero] using tendsto_const_nhds.mul hpow
  have hδ : Tendsto (fun j ↦ 2-recordLevel hα ht₀ j) atTop (𝓝 0) :=
    squeeze_zero (fun j ↦ by linarith [literal_record_level_lt_two hα ht₀ j])
      (literal_record_deficit_geometric_upper hα ht₀) hupper
  have h : Tendsto (fun j ↦ (2 : ℝ)-(2-recordLevel hα ht₀ j)) atTop (𝓝 (2-0 : ℝ)) :=
    tendsto_const_nhds.sub hδ
  convert h using 1
  · ext j
    ring
  · norm_num

end
end GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeRecordSequence
