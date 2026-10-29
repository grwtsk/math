/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Source argument: Ram Band, Siegfried Beckus, Raphael Loewy, arXiv:2402.16703v2,
Theorem 1.1 proof using Theorem 1.10. Mathlib authorship and licenses remain upstream. -/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Tactic

set_option autoImplicit false

namespace GRWTSK.Spectral.GapTransport

open Set

/-- The source's IDS2 property, with an actual positive neighborhood radius.
This is a hypothesis on the supplied spectrum and IDS, not an operator construction. -/
def LocalPlateauCharacterization (spectrum : Set ℝ) (ids : ℝ → ℝ) : Prop :=
  ∀ E, E ∉ spectrum ↔ ∃ δ > 0,
    ∀ x ∈ Ioo (E - δ) (E + δ), ids x = ids E

/-- A bounded open gap witness: ordered spectral endpoints, absent spectrum in the
interior, and a constant IDS label on the entire closed endpoint interval. -/
def OpenLabelGap (spectrum : Set ℝ) (ids : ℝ → ℝ) (label a b : ℝ) : Prop :=
  a < b ∧ a ∈ spectrum ∧ b ∈ spectrum ∧
    (∀ x ∈ Ioo a b, x ∉ spectrum) ∧ (∀ x ∈ Icc a b, ids x = label)

/-- Monotonicity pays the complete plateau, including both endpoints. -/
theorem plateau_on_Icc {ids : ℝ → ℝ} (hmono : Monotone ids)
    {a b : ℝ} (heq : ids a = ids b) :
    ∀ x ∈ Icc a b, ids x = ids a := by
  intro x hx
  apply le_antisymm
  · exact (hmono hx.2).trans_eq heq.symm
  · exact hmono hx.1

/-- Equal IDS values at distinct ordered spectral points give a positive open gap
only after the local plateau characterization has been supplied. -/
theorem gap_of_equal_endpoint_labels {spectrum : Set ℝ} {ids : ℝ → ℝ}
    (hmono : Monotone ids) (hlocal : LocalPlateauCharacterization spectrum ids)
    {label a b : ℝ} (hab : a < b) (ha : a ∈ spectrum) (hb : b ∈ spectrum)
    (hla : ids a = label) (hlb : ids b = label) :
    OpenLabelGap spectrum ids label a b := by
  have plateau := plateau_on_Icc hmono (hla.trans hlb.symm)
  refine ⟨hab, ha, hb, ?_, ?_⟩
  · intro E hE
    apply (hlocal E).2
    let δ := min (E - a) (b - E)
    have hδ : 0 < δ := lt_min (sub_pos.mpr hE.1) (sub_pos.mpr hE.2)
    refine ⟨δ, hδ, ?_⟩
    intro x hx
    have hleft : δ ≤ E - a := min_le_left _ _
    have hright : δ ≤ b - E := min_le_right _ _
    have hx' : x ∈ Icc a b := ⟨by linarith [hx.1], by linarith [hx.2]⟩
    exact (plateau x hx').trans (plateau E ⟨hE.1.le, hE.2.le⟩).symm
  · intro x hx
    exact (plateau x hx).trans hla

/-- The exact coding premises consumed by gap transport. Constructing the actual
Sturmian tree and proving its energy injectivity are separate obligations. -/
structure LabelCoding (Γ : Type*) (spectrum : Set ℝ) (ids : ℝ → ℝ)
    (labels : Γ → ℝ) where
  energy : Γ → ℝ
  spectral : ∀ γ, energy γ ∈ spectrum
  injective : Function.Injective energy
  labelled : ∀ γ, ids (energy γ) = labels γ

/-- Distinct coded paths with the same label retain strictly positive gap width. -/
theorem gap_of_distinct_paths {Γ : Type*} {spectrum : Set ℝ} {ids : ℝ → ℝ}
    {labels : Γ → ℝ} (coding : LabelCoding Γ spectrum ids labels)
    (hmono : Monotone ids) (hlocal : LocalPlateauCharacterization spectrum ids)
    {γ₁ γ₂ : Γ} (hne : γ₁ ≠ γ₂) {label : ℝ}
    (hl₁ : labels γ₁ = label) (hl₂ : labels γ₂ = label) :
    ∃ a b, OpenLabelGap spectrum ids label a b ∧ 0 < b - a := by
  have henergies : coding.energy γ₁ ≠ coding.energy γ₂ :=
    fun h => hne (coding.injective h)
  rcases lt_or_gt_of_ne henergies with hlt | hlt
  · refine ⟨coding.energy γ₁, coding.energy γ₂, ?_, sub_pos.mpr hlt⟩
    exact gap_of_equal_endpoint_labels hmono hlocal hlt
      (coding.spectral γ₁) (coding.spectral γ₂)
      ((coding.labelled γ₁).trans hl₁) ((coding.labelled γ₂).trans hl₂)
  · refine ⟨coding.energy γ₂, coding.energy γ₁, ?_, sub_pos.mpr hlt⟩
    exact gap_of_equal_endpoint_labels hmono hlocal hlt
      (coding.spectral γ₂) (coding.spectral γ₁)
      ((coding.labelled γ₂).trans hl₂) ((coding.labelled γ₁).trans hl₁)

/-- Transport an existing labelled gap through a shared label coding. The reference
surjectivity and target injectivity cannot be replaced by continuity alone. -/
theorem transport_open_label {Γ : Type*} {S₀ S : Set ℝ} {N₀ N : ℝ → ℝ}
    {labels : Γ → ℝ} (reference : LabelCoding Γ S₀ N₀ labels)
    (honto : ∀ E ∈ S₀, ∃ γ, reference.energy γ = E)
    (target : LabelCoding Γ S N labels)
    (hmono : Monotone N) (hlocal : LocalPlateauCharacterization S N)
    {label a b : ℝ} (hgap : OpenLabelGap S₀ N₀ label a b) :
    ∃ c d, OpenLabelGap S N label c d ∧ 0 < d - c := by
  obtain ⟨γ₁, hγ₁⟩ := honto a hgap.2.1
  obtain ⟨γ₂, hγ₂⟩ := honto b hgap.2.2.1
  have hne : γ₁ ≠ γ₂ := by
    intro heq
    have hab : a = b := hγ₁.symm.trans ((congrArg reference.energy heq).trans hγ₂)
    exact (ne_of_lt hgap.1) hab
  have hl₁ : labels γ₁ = label := by
    rw [← reference.labelled γ₁, hγ₁]
    exact hgap.2.2.2.2 a ⟨le_rfl, hgap.1.le⟩
  have hl₂ : labels γ₂ = label := by
    rw [← reference.labelled γ₂, hγ₂]
    exact hgap.2.2.2.2 b ⟨hgap.1.le, le_rfl⟩
  exact gap_of_distinct_paths target hmono hlocal hne hl₁ hl₂

/-- Quantify every desired label; no finite inventory is substituted. -/
theorem transport_all_labels {Γ : Type*} {S₀ S : Set ℝ} {N₀ N : ℝ → ℝ}
    {labels : Γ → ℝ} (reference : LabelCoding Γ S₀ N₀ labels)
    (honto : ∀ E ∈ S₀, ∃ γ, reference.energy γ = E)
    (target : LabelCoding Γ S N labels)
    (hmono : Monotone N) (hlocal : LocalPlateauCharacterization S N)
    (allowed : Set ℝ)
    (hseed : ∀ label ∈ allowed, ∃ a b, OpenLabelGap S₀ N₀ label a b) :
    ∀ label ∈ allowed, ∃ c d, OpenLabelGap S N label c d ∧ 0 < d - c := by
  intro label hl
  obtain ⟨a, b, hgap⟩ := hseed label hl
  exact transport_open_label reference honto target hmono hlocal hgap

/-- Full IDS comparison localizes every point of a label plateau. In the Sturmian
application the comparison offsets are `min V 0` and `max V 0`; obtaining the
actual IDS inequalities from finite-volume eigenvalue comparison is a separate port. -/
theorem labelled_point_bounds_of_ids_comparison {free ids : ℝ → ℝ}
    {label freeEnergy lower upper E : ℝ}
    (hcompare : ∀ x, free (x - upper) ≤ ids x ∧ ids x ≤ free (x - lower))
    (hcutLeft : ∀ x, free x ≤ label → x ≤ freeEnergy)
    (hcutRight : ∀ x, label ≤ free x → freeEnergy ≤ x)
    (hlabel : ids E = label) :
    freeEnergy + lower ≤ E ∧ E ≤ freeEnergy + upper := by
  have hleft := hcutRight (E - lower) (hlabel.symm.trans_le (hcompare E).2)
  have hright := hcutLeft (E - upper) ((hcompare E).1.trans_eq hlabel)
  constructor <;> linarith

/-- A labelled gap has width at most the full range of comparison offsets.
No eigenvalue comparison or free IDS inverse is silently supplied by this lemma. -/
theorem gap_width_le_of_ids_comparison {spectrum : Set ℝ} {free ids : ℝ → ℝ}
    {label freeEnergy lower upper a b : ℝ}
    (hcompare : ∀ x, free (x - upper) ≤ ids x ∧ ids x ≤ free (x - lower))
    (hcutLeft : ∀ x, free x ≤ label → x ≤ freeEnergy)
    (hcutRight : ∀ x, label ≤ free x → freeEnergy ≤ x)
    (hgap : OpenLabelGap spectrum ids label a b) :
    0 < b - a ∧ b - a ≤ upper - lower := by
  have ha := labelled_point_bounds_of_ids_comparison hcompare hcutLeft hcutRight
    (hgap.2.2.2.2 a ⟨le_rfl, hgap.1.le⟩)
  have hb := labelled_point_bounds_of_ids_comparison hcompare hcutLeft hcutRight
    (hgap.2.2.2.2 b ⟨hgap.1.le, le_rfl⟩)
  exact ⟨sub_pos.mpr hgap.1, by linarith [ha.1, hb.2]⟩

/-- A generic continuous separation can be positive for every positive parameter
and still collapse exactly at zero. This is not a Sturmian gap-width formula. -/
theorem continuity_does_not_prevent_zero_collapse :
    Continuous (fun V : ℝ => -V) ∧ Continuous (fun V : ℝ => V) ∧
    (∀ V : ℝ, 0 < V → -V < V) ∧ (- (0 : ℝ)) = 0 := by
  exact ⟨continuous_neg, continuous_id, fun V hV => by linarith, neg_zero⟩

/-- Even strict positivity at every positive parameter supplies no uniform positive
width near zero. The example is generic, not the actual Sturmian spectrum. -/
theorem positive_width_has_no_uniform_floor :
    (∀ V : ℝ, 0 < V → 0 < 2 * V) ∧
    (∀ c : ℝ, 0 < c → ∃ V : ℝ, 0 < V ∧ 2 * V < c) := by
  constructor
  · intro V hV
    linarith
  · intro c hc
    exact ⟨c / 4, by linarith, by linarith⟩

/-- A monotone constant function is not automatically a faithful IDS of the
supplied spectrum. Omitting IDS2 would incorrectly create a gap in all of R. -/
theorem monotone_plateau_alone_is_not_a_gap :
    Monotone (fun _ : ℝ => (0 : ℝ)) ∧
    ¬ OpenLabelGap Set.univ (fun _ : ℝ => 0) 0 (-1) 1 := by
  refine ⟨monotone_const, ?_⟩
  intro hgap
  exact hgap.2.2.2.1 0 (by constructor <;> norm_num) (Set.mem_univ 0)

/-- Distinct paths can share a collapsed energy when injectivity is absent. -/
theorem collapsed_coding_not_injective :
    ¬ Function.Injective (fun _ : Bool => (0 : ℝ)) := by
  intro h
  have hbad : true = false := h rfl
  cases hbad

end GRWTSK.Spectral.GapTransport
