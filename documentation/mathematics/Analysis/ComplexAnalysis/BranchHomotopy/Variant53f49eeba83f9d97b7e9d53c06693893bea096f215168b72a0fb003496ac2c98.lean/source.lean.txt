-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.CoefficientOneForm.Variant4c73e1b66395611d7e239f8446bc23d8c2f06d59f44272cf983dfdc526edd97d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4c73e1b66395611d7e239f8446bc23d8c2f06d59f44272cf983dfdc526edd97d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.CoefficientOneForm.Variant4c73e1b66395611d7e239f8446bc23d8c2f06d59f44272cf983dfdc526edd97d","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"4c73e1b66395611d7e239f8446bc23d8c2f06d59f44272cf983dfdc526edd97d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/tmp/ca03/BranchHomotopy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Core.ComplexAnalysis.FiniteHoleGeometry
import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib.MeasureTheory.Integral.CurveIntegral.Poincare
import Mathlib.Tactic

/-!
# CA-03 branch F1: homotopy, path, and annulus audit

This non-canonical scratch file audits pinned mathlib's curve-integral and
smooth-homotopy API against the exact rectangle-minus-circle target.  The
analytic homotopy theorem exists, but the geometry and normalization bridges
needed by `SingleHoleExcisionStatement` do not yet exist.
-/


namespace GRWTSK.Analysis.ComplexAnalysis.CoefficientOneForm.Variant4c73e1b66395611d7e239f8446bc23d8c2f06d59f44272cf983dfdc526edd97d

namespace Surface.Core.ComplexAnalysis.CA03Scratch.BranchHomotopy

noncomputable section

open Filter Set Complex
open scoped Interval Pointwise Topology unitInterval

/-! ## Verified positive API -/

#check Path
#check Path.trans
#check Path.map
#check curveIntegral
#check curveIntegral_trans
#check ContinuousMap.Homotopy.curveIntegral_add_curveIntegral_eq_of_hasFDerivWithinAt
#check ContinuousMap.Homotopy.curveIntegral_add_curveIntegral_eq_of_diffContOnCl
#check Complex.circleIntegral_eq_of_differentiable_on_annulus_off_countable
#check Complex.circleIntegral_sub_center_inv_smul_eq_of_differentiable_on_annulus_off_countable
#check Complex.circleIntegral_sub_center_inv_smul_of_differentiable_on_off_countable_of_tendsto
#check Complex.integral_boundary_rect_eq_zero_of_differentiableOn

/-! ## Verified missing bridge API -/

#check_failure curveIntegral_reparam
#check_failure Path.curveIntegral_reparam
#check_failure Complex.contourIntegral
#check_failure Complex.windingNumber
#check_failure Path.windingNumber
#check_failure Complex.integral_boundary_rect_sub_circle_eq_zero

/-! ## Holomorphic coefficient as a closed one-form -/

/-- The complex one-form `f(z) dz`, expressed in mathlib's curve-integral API. -/
def coefficientOneForm (f : ℂ → ℂ) : ℂ → ℂ →L[ℂ] ℂ :=
  (ContinuousLinearMap.smulRightL ℂ ℂ ℂ 1) ∘ f

/-- Pinned mathlib transports `f(z) dz` across a `C²` homotopy whose open
square lies in the differentiability set.  The two transverse edge integrals
are retained explicitly; they cancel for a free homotopy of closed curves.

This is the strongest directly reusable homotopy theorem reached by this
branch.  It is not yet a rectangle-minus-circle theorem. -/
theorem curveIntegral_coefficientOneForm_homotopy
    {a b c d : ℂ} {γ₁ : Path a b} {γ₂ : Path c d}
    {t : Set ℂ} {f : ℂ → ℂ}
    (φ : (γ₁ : C(I, ℂ)).Homotopy γ₂)
    (hφt : ∀ x ∈ Ioo 0 1, ∀ y ∈ Ioo 0 1, φ (x, y) ∈ t)
    (hd : DifferentiableOn ℂ f t)
    (hfc : ContinuousOn f (closure t))
    (hφsmooth : ContDiffOn ℝ 2
      (fun xy : ℝ × ℝ ↦ Set.IccExtend zero_le_one (φ.extend xy.1) xy.2)
      (Icc 0 1)) :
    curveIntegral (coefficientOneForm f) γ₁ +
        curveIntegral (coefficientOneForm f) (φ.evalAt 1) =
    curveIntegral (coefficientOneForm f) γ₂ +
        curveIntegral (coefficientOneForm f) (φ.evalAt 0) := by
  let D : ℂ → ℂ →L[ℝ] ℂ →L[ℂ] ℂ := fun z ↦
    (ContinuousLinearMap.toSpanSingleton ℂ
      ((1 : ℂ →L[ℂ] ℂ).smulRight (derivWithin f t z))).restrictScalars ℝ
  apply φ.curveIntegral_add_curveIntegral_eq_of_hasFDerivWithinAt
    (dω := D) hφt
  · intro z hz
    simpa [coefficientOneForm, D] using
      ((ContinuousLinearMap.smulRightL ℂ ℂ ℂ 1).hasFDerivAt
        |>.comp_hasDerivWithinAt z (hd z hz).hasDerivWithinAt
        |>.hasFDerivWithinAt |>.restrictScalars ℝ)
  · exact (ContinuousLinearMap.smulRightL ℂ ℂ ℂ 1).continuous.comp_continuousOn hfc
  · intro z hz u hu v hv
    simp [D]
    ring
  · exact hφsmooth

/-- Punctured-neighborhood coefficient of a simple pole. -/
def HasSimplePoleCoefficientAt (h : ℂ → ℂ) (c r : ℂ) : Prop :=
  Tendsto (fun z ↦ (z - c) * h z) (𝓝[≠] c) (𝓝 r)

/-- Exact circular single-hole residue theorem supported by pinned mathlib.
It computes the outer circle directly from the punctured coefficient. -/
theorem circleIntegral_eq_two_pi_I_mul_of_simplePoleCoefficient
    {h : ℂ → ℂ} {c r : ℂ} {R : ℝ}
    (hR : 0 < R)
    (hc : ContinuousOn h (Metric.closedBall c R \ {c}))
    (hd : ∀ z ∈ Metric.ball c R \ {c}, DifferentiableAt ℂ h z)
    (hr : HasSimplePoleCoefficientAt h c r) :
    circleIntegral h c R = (2 * Real.pi * Complex.I) * r := by
  let F : ℂ → ℂ := fun z ↦ (z - c) * h z

  have hFc : ContinuousOn F (Metric.closedBall c R \ {c}) :=
    (continuousOn_id.sub continuousOn_const).mul hc

  have hFd : ∀ z ∈ (Metric.ball c R \ {c}) \ (∅ : Set ℂ),
      DifferentiableAt ℂ F z := by
    intro z hz
    exact (differentiableAt_id.sub_const c).mul (hd z hz.1)

  have hFint :
      circleIntegral (fun z ↦ (z - c)⁻¹ * F z) c R =
        (2 * Real.pi * Complex.I) * r := by
    simpa only [smul_eq_mul] using
      (Complex.circleIntegral_sub_center_inv_smul_of_differentiable_on_off_countable_of_tendsto
        hR Set.countable_empty hFc hFd hr)

  rw [← hFint]
  apply circleIntegral.integral_congr hR.le
  intro z hz
  have hzc : z - c ≠ 0 := by
    rw [sub_ne_zero]
    intro hzc
    have hdist : dist z c = R := Metric.mem_sphere.mp hz
    have hzero : (0 : ℝ) = R := by simpa [hzc] using hdist
    exact hR.ne' hzero.symm
  simp [F, hzc]

/-- Annulus transport between concentric circles. -/
theorem circleIntegral_eq_of_singleHole_annulus
    {h : ℂ → ℂ} {c : ℂ} {r R : ℝ}
    (hr : 0 < r) (hrR : r ≤ R)
    (hc : ContinuousOn h (Metric.closedBall c R \ Metric.ball c r))
    (hd : ∀ z ∈ Metric.ball c R \ Metric.closedBall c r,
      DifferentiableAt ℂ h z) :
    circleIntegral h c R = circleIntegral h c r := by
  exact Complex.circleIntegral_eq_of_differentiable_on_annulus_off_countable
    hr hrR Set.countable_empty hc (by simpa using hd)

/-!
The preceding circular theorems compare concentric circles only.  The smooth
homotopy theorem can compare general smooth paths, but the shared target
requires

`rectangleBoundaryIntegral f R.lower R.upper = circleIntegral f H.center H.radius`.

No theorem packages the required geometric homotopy or identifies the raw
rectangle/circle interval integrals with the relevant curve integrals.  A
single whole-loop homotopy also fails the available theorem's `C²` hypothesis:
the rectangular loop has four interior parameter corners.  The viable route
is four smooth radial strips, with explicit cancellation of their transverse
seams, plus reparameterization/normalization lemmas for each outer segment and
inner circular arc.  Pinned mathlib has no curve-integral reparameterization
theorem, so this branch cannot inhabit `SingleHoleExcisionStatement` within
the bounded branch budget.
-/

#print axioms circleIntegral_eq_two_pi_I_mul_of_simplePoleCoefficient
#print axioms circleIntegral_eq_of_singleHole_annulus
#print axioms curveIntegral_coefficientOneForm_homotopy

end

end Surface.Core.ComplexAnalysis.CA03Scratch.BranchHomotopy
