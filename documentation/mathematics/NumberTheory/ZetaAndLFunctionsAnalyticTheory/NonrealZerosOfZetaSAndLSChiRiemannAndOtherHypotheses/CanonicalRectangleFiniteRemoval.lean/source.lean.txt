/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.FiniteRemovablePatching
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleArgumentPrinciple
import GRWTSK.Analysis.Complex.LogarithmicPrincipalPart
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Finite local removal for the canonical zeta rectangle

This file reduces the remaining global regularization obligation to one local
analytic germ at each member of the finite `singularHead N`.

The raw remainder

  logDeriv riemannZeta - rectanglePrincipalPart N

is proved analytic at every closed-rectangle point outside the complete source
singularity head. The generic finite-patching theorem then turns punctured local
germs at the singular points into one `RectangleRegularExtension`; boundary
compatibility is automatic because every germ agrees with the same raw source.

The missing simple-trivial-zero logarithmic principal part is also derived from
the actual zeta derivative and analytic order. No local-removal family, rational
count enclosure, numerical source acceptance, RH result, or prime theorem is
assumed or constructed here.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CanonicalRectangleFiniteRemoval

open Filter Set MeasureTheory
open scoped Topology BigOperators Interval
open GRWTSK.Analysis.Complex.FiniteRemovablePatching
open GRWTSK.Analysis.Complex.LogarithmicPrincipalPart
open CanonicalZeroDivisor
open AdmissibleRectangles
open TrivialZeroResidues
open CanonicalLogarithmicResidues
open CanonicalRectangleCountIsolation
open CanonicalRectangleCauchyGoursat
open CanonicalRectangleResidueAccounting
open CanonicalRectangleRegularization
open CanonicalRectangleArgumentPrinciple

noncomputable section

/-- The punctured source whose finitely many singular values must be filled. -/
def rawRectangleRegularPart (N : ℕ) (s : ℂ) : ℂ :=
  logDeriv riemannZeta s - rectanglePrincipalPart N s

/-- Exact coordinate membership in the closed Cauchy-Goursat rectangle. -/
theorem mem_closedRectangle_iff (N : ℕ) (s : ℂ) :
    s ∈ closedRectangle N ↔
      leftEdge N ≤ s.re ∧ s.re ≤ 2 ∧
      -contourHeight N ≤ s.im ∧ s.im ≤ contourHeight N := by
  have hleft : leftEdge N ≤ 2 :=
    (leftEdge_neg N).le.trans (by norm_num)
  have hheight : -contourHeight N ≤ contourHeight N := by
    linarith [contourHeight_pos N]
  simp [closedRectangle, uIcc_of_le hleft, uIcc_of_le hheight,
    and_assoc]

/-- Every closed-rectangle point is either strict interior or boundary. -/
theorem mem_interior_or_boundary_of_mem_closedRectangle
    (N : ℕ) {s : ℂ} (hs : s ∈ closedRectangle N) :
    s ∈ interior N ∨ s ∈ boundary N := by
  rcases (mem_closedRectangle_iff N s).mp hs with ⟨hL, hR, hB, hT⟩
  have hAbs : |s.im| ≤ contourHeight N := abs_le.mpr ⟨hB, hT⟩
  by_cases hLi : leftEdge N < s.re
  · by_cases hRi : s.re < 2
    · by_cases hHi : |s.im| < contourHeight N
      · exact Or.inl ⟨hLi, hRi, hHi⟩
      · exact Or.inr ⟨hL, hR, hAbs, Or.inr (Or.inr
          (le_antisymm hAbs (le_of_not_gt hHi)))⟩
    · exact Or.inr ⟨hL, hR, hAbs, Or.inr (Or.inl
        (le_antisymm (le_of_not_gt hRi) hR))⟩
  · exact Or.inr ⟨hL, hR, hAbs, Or.inl
      (le_antisymm hL (le_of_not_gt hLi))⟩

/-- Any zero or the pole in the closed rectangle belongs to the complete finite
singularity head. -/
theorem mem_singularHead_of_mem_closedRectangle_of_zero_or_pole
    (N : ℕ) {s : ℂ} (hs : s ∈ closedRectangle N)
    (singular : s = 1 ∨ riemannZeta s = 0) :
    s ∈ singularHead N := by
  rcases mem_interior_or_boundary_of_mem_closedRectangle N hs with hi | hb
  · exact (mem_singularHead_iff N s).mpr ⟨hi, singular⟩
  · rcases singular with rfl | zero
    · exact Finset.mem_insert_self _ _
    · exact False.elim ((zeta_ne_zero_on_boundary N s hb) zero)

/-- Outside the singular head, the actual zeta source is nonzero. -/
theorem zeta_ne_zero_of_mem_closedRectangle_of_not_mem_singularHead
    (N : ℕ) {s : ℂ} (hs : s ∈ closedRectangle N)
    (hnot : s ∉ singularHead N) : riemannZeta s ≠ 0 := by
  intro zero
  exact hnot (mem_singularHead_of_mem_closedRectangle_of_zero_or_pole
    N hs (Or.inr zero))

/-- Outside the singular head, the pole is absent. -/
theorem ne_one_of_not_mem_singularHead
    (N : ℕ) {s : ℂ} (hnot : s ∉ singularHead N) : s ≠ 1 := by
  intro same
  subst s
  exact hnot (Finset.mem_insert_self _ _)

/-- The nontrivial-zero principal-part sum is analytic away from the complete
singularity head. -/
theorem nontrivialPrincipalPart_analyticAt_of_not_mem
    (N : ℕ) {s : ℂ} (hnot : s ∉ singularHead N) :
    AnalyticAt ℂ (nontrivialPrincipalPart N) s := by
  classical
  unfold nontrivialPrincipalPart
  refine Finset.analyticAt_fun_sum _ (fun z hz => ?_)
  have hne : s ≠ z.1 := by
    intro same
    apply hnot
    subst s
    apply Finset.mem_insert_of_mem
    apply Finset.mem_union_left
    exact Finset.mem_image.mpr ⟨z, hz, rfl⟩
  exact analyticAt_const.div (analyticAt_id.sub analyticAt_const)
    (sub_ne_zero.mpr hne)

/-- The finite trivial-zero principal-part sum is analytic away from the complete
singularity head. -/
theorem trivialPrincipalPart_analyticAt_of_not_mem
    (N : ℕ) {s : ℂ} (hnot : s ∉ singularHead N) :
    AnalyticAt ℂ (trivialPrincipalPart N) s := by
  classical
  unfold trivialPrincipalPart
  refine Finset.analyticAt_fun_sum _ (fun k hk => ?_)
  have hne : s ≠ trivialPoint k := by
    intro same
    apply hnot
    subst s
    apply Finset.mem_insert_of_mem
    apply Finset.mem_union_right
    exact Finset.mem_image.mpr ⟨k, hk, rfl⟩
  simpa only [one_div] using
    analyticAt_const.div (analyticAt_id.sub analyticAt_const)
      (sub_ne_zero.mpr hne)

/-- The pole principal part is analytic away from the singular head. -/
theorem polePrincipalPart_analyticAt_of_not_mem
    (N : ℕ) {s : ℂ} (hnot : s ∉ singularHead N) :
    AnalyticAt ℂ polePrincipalPart s := by
  have hne := ne_one_of_not_mem_singularHead N hnot
  have h : AnalyticAt ℂ (fun w : ℂ => (-1 : ℂ) / (w - 1)) s :=
    analyticAt_const.div (analyticAt_id.sub analyticAt_const)
      (sub_ne_zero.mpr hne)
  simpa [polePrincipalPart, neg_div, one_div] using h

/-- The complete fixed principal part is analytic at every nonsingular point. -/
theorem rectanglePrincipalPart_analyticAt_of_not_mem
    (N : ℕ) {s : ℂ} (hnot : s ∉ singularHead N) :
    AnalyticAt ℂ (rectanglePrincipalPart N) s := by
  unfold rectanglePrincipalPart
  exact ((nontrivialPrincipalPart_analyticAt_of_not_mem N hnot).add
    (trivialPrincipalPart_analyticAt_of_not_mem N hnot)).add
      (polePrincipalPart_analyticAt_of_not_mem N hnot)

/-- The raw logarithmic remainder is analytic throughout the closed rectangle
away from the finite source-determined singular head. -/
theorem rawRectangleRegularPart_analyticAt_of_not_mem
    (N : ℕ) {s : ℂ} (hs : s ∈ closedRectangle N)
    (hnot : s ∉ singularHead N) :
    AnalyticAt ℂ (rawRectangleRegularPart N) s := by
  have hneOne := ne_one_of_not_mem_singularHead N hnot
  have hneZero :=
    zeta_ne_zero_of_mem_closedRectangle_of_not_mem_singularHead N hs hnot
  have hzeta : AnalyticAt ℂ riemannZeta s :=
    analyticOn_riemannZeta s hneOne
  have hlog : AnalyticAt ℂ (logDeriv riemannZeta) s :=
    hzeta.deriv.div hzeta hneZero
  unfold rawRectangleRegularPart
  exact hlog.sub (rectanglePrincipalPart_analyticAt_of_not_mem N hnot)

/-- At a simple negative-even zero, the logarithmic derivative has a unit
principal part and an analytic regular germ. -/
theorem trivial_zero_principal_part (k : ℕ) :
    ∃ A : ℂ → ℂ, AnalyticAt ℂ A (trivialPoint k) ∧
      (logDeriv riemannZeta =ᶠ[𝓝[≠] (trivialPoint k)]
        fun s => 1 / (s - trivialPoint k) + A s) := by
  have hne : trivialPoint k ≠ 1 := by
    intro same
    have hn := trivialPoint_re_neg k
    rw [same] at hn
    norm_num at hn
  have ha : AnalyticAt ℂ riemannZeta (trivialPoint k) :=
    analyticOn_riemannZeta (trivialPoint k) hne
  have horder : analyticOrderAt riemannZeta (trivialPoint k) = (1 : ℕ∞) :=
    ha.analyticOrderAt_eq_one_of_zero_deriv_ne_zero
      (zeta_trivialPoint k) (deriv_zeta_trivialPoint_ne_zero k)
  obtain ⟨g, hg, hg0, hfactor⟩ :=
    ha.analyticOrderAt_eq_natCast.mp horder
  have hfactor' : riemannZeta =ᶠ[𝓝[≠] (trivialPoint k)]
      fun s => (s - trivialPoint k) ^ (1 : ℤ) * g s := by
    simpa only [zpow_one, smul_eq_mul] using
      hfactor.filter_mono nhdsWithin_le_nhds
  have hp := logDeriv_principal_part riemannZeta g (trivialPoint k) (1 : ℤ)
    hg hg0 hfactor'
  exact ⟨logDeriv g, hp.1, by simpa using hp.2⟩

/-- The exact remaining local input: one analytic germ of the RAW remainder at
each member of the finite singular head. -/
abbrev RectangleLocalRemovalData (N : ℕ) :=
  LocalRemovalData (rawRectangleRegularPart N) (singularHead N)

namespace RectangleLocalRemovalData

/-- The open rectangle is contained in the closed rectangle. -/
theorem openRectangle_subset_closedRectangle (N : ℕ) :
    openRectangle N ⊆ closedRectangle N := by
  intro s hs
  rcases (CanonicalRectanglePrincipalPartWinding.mem_openRectangle_iff N s).mp hs with
    ⟨hL, hR, hB, hT⟩
  exact (mem_closedRectangle_iff N s).mpr ⟨hL.le, hR.le, hB.le, hT.le⟩

/-- Finite local removable germs construct the global regular rectangle extension. -/
noncomputable def toRegularExtension {N : ℕ}
    (data : RectangleLocalRemovalData N) :
    RectangleRegularExtension N where
  regular := data.filled
  continuous := data.continuousOn_filled (closedRectangle N)
    (fun z hz hnot => rawRectangleRegularPart_analyticAt_of_not_mem N hz hnot)
  differentiable := data.differentiableOn_filled (openRectangle N)
    (fun z hz hnot => rawRectangleRegularPart_analyticAt_of_not_mem N
      (openRectangle_subset_closedRectangle N hz) hnot)
  punctured_agreement := by
    intro s _ hnot
    rw [data.filled_eq_raw hnot]
    unfold rawRectangleRegularPart
    ring

/-- The normalized argument-principle identity consumes only finite local germs. -/
theorem normalizedRectangleIndex_eq_expected {N : ℕ}
    (data : RectangleLocalRemovalData N) :
    normalizedRectangleIndex N = (expectedRectangleIndex N : ℂ) :=
  CanonicalRectangleArgumentPrinciple.normalizedRectangleIndex_eq_expected
    data.toRegularExtension

/-- Attach a source-correct rational interval after local removals are supplied. -/
noncomputable def toCanonicalRectangleIndexEnclosure {N : ℕ}
    (data : RectangleLocalRemovalData N)
    (interval : RationalPositiveHeightCountIsolation.RationalCountInterval)
    (containsExpected : interval.Contains (expectedRectangleIndex N)) :
    CanonicalRectangleIndexEnclosure N :=
  CanonicalRectangleArgumentPrinciple.toCanonicalRectangleIndexEnclosure
    data.toRegularExtension interval containsExpected

end RectangleLocalRemovalData

end

end GRWTSK.RiemannHypothesis.CanonicalRectangleFiniteRemoval
