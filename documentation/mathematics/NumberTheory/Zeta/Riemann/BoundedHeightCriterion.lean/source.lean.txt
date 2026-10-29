/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors, GRL-RH-1 / 0.4.0.
Formalization assistance: OpenAI Codex. Mathlib retains upstream authorship/license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry
import Mathlib.Algebra.Order.Archimedean.Basic

/-!
# Exhaustion by bounded-height zero enclosures

All natural heights are required. The inductive certificate interface consumes
a proved total step; it does not supply certificates or infer RH from finite data.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann

open GRWTSK.RiemannHypothesis

/-- Exact critical-line equality for every target zero through natural height `N`. -/
def RHThrough (N : ℕ) : Prop :=
  ∀ s : ℂ, NontrivialZetaZero s → |s.im| ≤ N → s.re = 1 / 2

theorem riemannHypothesis_iff_all_heights :
    _root_.RiemannHypothesis ↔ ∀ N, RHThrough N := by
  constructor
  · intro h N s hs _
    exact h s hs.1 hs.2.1 hs.2.2
  · intro h s hz ht hp
    obtain ⟨N, hN⟩ := exists_nat_gt |s.im|
    exact h N s ⟨hz, ht, hp⟩ hN.le

theorem RHThrough.mono {M N : ℕ} (h : RHThrough N) (hMN : M ≤ N) : RHThrough M := by
  intro s hs hM
  exact h s hs (hM.trans (by exact_mod_cast hMN))

/-- A conditional all-height certificate scheme with an actual total induction step. -/
structure HeightScheme where
  State : ℕ → Type
  base : State 0
  step : ∀ N, State N → State (N + 1)
  sound : ∀ N, State N → RHThrough N

/-- Ordinary natural induction constructs a certificate at every height. -/
noncomputable def HeightScheme.state (scheme : HeightScheme) (N : ℕ) : scheme.State N :=
  Nat.rec scheme.base (fun n state => scheme.step n state) N

theorem HeightScheme.riemannHypothesis (scheme : HeightScheme) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_iff_all_heights.mpr fun N => scheme.sound N (scheme.state N)

/-- Closed rectangles separated from the critical line by a positive reciprocal. -/
def OffLineRectangle (N m : ℕ) : Set ℂ :=
  {s | 0 ≤ s.re ∧ s.re ≤ 1 ∧ |s.im| ≤ N ∧ 1 / ((m : ℝ) + 1) ≤ |s.re - 1 / 2|}

/-- Both the height and the near-line index must be universally quantified. -/
theorem riemannHypothesis_iff_rectangle_exclusion :
    _root_.RiemannHypothesis ↔
      ∀ N m : ℕ, ∀ s : ℂ, NontrivialZetaZero s → s ∉ OffLineRectangle N m := by
  constructor
  · intro h N m s hs hmem
    have hline := h s hs.1 hs.2.1 hs.2.2
    have hpos : (0 : ℝ) < 1 / ((m : ℝ) + 1) := by positivity
    have hdist := hmem.2.2.2
    rw [hline, sub_self, abs_zero] at hdist
    exact (not_le_of_gt hpos) hdist
  · intro h s hz ht hp
    by_contra hline
    have hs : NontrivialZetaZero s := ⟨hz, ht, hp⟩
    have hdist : 0 < |s.re - 1 / 2| := abs_pos.mpr (sub_ne_zero.mpr hline)
    obtain ⟨N, hN⟩ := exists_nat_gt |s.im|
    obtain ⟨m, hm⟩ := exists_nat_one_div_lt hdist
    exact h N m s hs ⟨hs.mem_critical_strip.1.le, hs.mem_critical_strip.2.le, hN.le, hm.le⟩

end GRWTSK.NumberTheory.Zeta.Riemann
