/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. -/
import GRWTSK.NumberTheory.Moebius.FiniteAnchorLogObservation
import GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyUnmatchedKernel

/-! # Corrected anchor source with the centered residual retained
The observable anchor part is corrected by the actual signed other-shift debt.
Its enlarged target rows give an injective finite operator. The complete centered
packet is NOT identified with this anchor part: its residual is retained and is
one on the previously invisible scale-ten cell. No RH bound on that channel is
inferred from the anchor injectivity theorem. -/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.RiemannHypothesis

def correctedAnchorSource (X a : ℕ) : ℝ :=
  if 0 < (anchoredMobiusPair a).h then
    anchoredPairSign a * (canonicalFourFamilyCenteredData X (canonicalFourFamilyOfAnchor a)
      (anchoredMobiusPair a).center - anchoredAuthenticOtherShiftDefect (2*X) a
        (canonicalFourFamilyShiftSet (2*X) (canonicalFourFamilyOfAnchor a)))
  else anchoredPairSign a * (anchoredMobiusPair a).coefficient

theorem correctedAnchorSource_eq_moebius {X a : ℕ} (ha : a ∈ Finset.Icc 1 (2*X)) :
    correctedAnchorSource X a = moebiusReal a := by
  have ha' := Finset.mem_Icc.mp ha
  unfold correctedAnchorSource
  split_ifs with hp
  · rw [canonicalFourFamily_anchor_cell_minus_other_eq_coefficient (by omega) ha'.2 hp,
      anchoredPair_signedCoefficient_eq_moebius (by omega)]
    rfl
  · exact anchoredPair_signedCoefficient_eq_moebius (by omega)

def anchorLift (X : ℕ) (f : ℕ → ℝ) (F : CanonicalFourFamily) (c : ℕ) : ℝ :=
  ∑ a ∈ Finset.Icc 1 (2*X),
    if 0 < (anchoredMobiusPair a).h ∧ F=canonicalFourFamilyOfAnchor a ∧ c=(anchoredMobiusPair a).center
      then anchoredPairSign a*f a else 0

theorem anchorLift_selected {X a : ℕ} (ha : a ∈ Finset.Icc 1 (2*X))
    (hp : 0 < (anchoredMobiusPair a).h) (f : ℕ → ℝ) :
    anchorLift X f (canonicalFourFamilyOfAnchor a) (anchoredMobiusPair a).center = anchoredPairSign a*f a := by
  classical
  unfold anchorLift
  rw [Finset.sum_eq_single a]
  · simp [hp]
  · intro b hb hba
    split_ifs with h
    · have he := anchored_family_center_injective (Finset.mem_Icc.mp ha).1
        (Finset.mem_Icc.mp hb).1 h.2.1 h.2.2
      exact (hba he.symm).elim
    · rfl
  · intro h
    exact (h ha).elim

def centeredAnchorDebt (X : ℕ) (F : CanonicalFourFamily) (c : ℕ) : ℝ :=
  canonicalFourFamilyCenteredData X F c-anchorLift X (correctedAnchorSource X) F c

theorem centeredSource_eq_anchor_add_debt (X : ℕ) (F : CanonicalFourFamily) (c : ℕ) :
    canonicalFourFamilyCenteredData X F c = anchorLift X (correctedAnchorSource X) F c+centeredAnchorDebt X F c := by
  unfold centeredAnchorDebt
  ring

/-- On an actual selected positive-shift cell the retained channel is precisely
its pre-existing signed other-shift defect. -/
theorem centeredAnchorDebt_selected {X a : ℕ} (ha : a ∈ Finset.Icc 1 (2*X))
    (hp : 0 < (anchoredMobiusPair a).h) :
    centeredAnchorDebt X (canonicalFourFamilyOfAnchor a) (anchoredMobiusPair a).center =
      anchoredAuthenticOtherShiftDefect (2*X) a
        (canonicalFourFamilyShiftSet (2*X) (canonicalFourFamilyOfAnchor a)) := by
  unfold centeredAnchorDebt
  rw [anchorLift_selected ha hp]
  unfold correctedAnchorSource
  rw [if_pos hp]
  unfold anchoredPairSign
  split_ifs <;> ring

theorem anchorLift_unmatched (X : ℕ) (f : ℕ → ℝ) :
    anchorLift X f (canonicalFourFamilyOfAnchor (2*X+1)) X = 0 := by
  unfold anchorLift
  apply Finset.sum_eq_zero
  intro a ha
  split_ifs with h
  · have hc : (anchoredMobiusPair (2*X+1)).center = X := by
      simp [anchoredMobiusPair,CenteredAdditiveMobiusPair.center]
      omega
    have he := anchored_family_center_injective (by omega : 0 < 2*X+1)
      (Finset.mem_Icc.mp ha).1 h.2.1 (hc.trans h.2.2)
    have ht := (Finset.mem_Icc.mp ha).2
    omega
  · rfl

theorem centeredAnchorDebt_ten : centeredAnchorDebt 10 (true,false) 10 = 1 := by
  have hf : canonicalFourFamilyOfAnchor (2*10+1) = (true,false) := by decide
  unfold centeredAnchorDebt
  rw [← hf,anchorLift_unmatched,hf,sub_zero,parityOne_scaleTen_amplitude]

theorem correctedAnchor_observation_injective {X : ℕ} (f g : ℕ → ℝ)
    (h : ∀ a ∈ Finset.Icc 1 (2*X),
      finiteAnchorLogObservation (2*X) f (2*a)=finiteAnchorLogObservation (2*X) g (2*a)) :
    ∀ a ∈ Finset.Icc 1 (2*X), f a=g a := finiteAnchorLogObservation_injective f g h

/-- Actual arithmetic targets through 4X, with both boundary anchors retained. -/
theorem correctedAnchor_observation_actual {X n : ℕ} (hn : n ≤ 4*X) :
    finiteAnchorLogObservation (2*X) (correctedAnchorSource X) n = ArithmeticFunction.vonMangoldt n := by
  have he : finiteAnchorLogObservation (2*X) (correctedAnchorSource X) n =
      finiteAnchorLogObservation (2*X) moebiusReal n := by
    unfold finiteAnchorLogObservation
    apply Finset.sum_congr rfl
    intro p _
    split_ifs with hp
    · rw [correctedAnchorSource_eq_moebius hp]
    · rfl
  rw [he]
  exact finiteAnchorLogObservation_moebius (by omega)
end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
