module

public import Surface.Core.RiemannSphere
public import Surface.Core.XYZ.Fixed
public import Mathlib.Analysis.InnerProductSpace.PiL2
public import Mathlib.Topology.Instances.AddCircle.Real
import Mathlib.Tactic

/-!
# Exact XYZ adapters for the Riemann sphere and related spaces

This module gives two deliberately different sphere-valued adapters for a
normalized fixed-point XYZ value.

* `xyzToRiemannSphere` uses the exact rational `x` and `y` chromaticities as a
  finite complex coordinate and then uses the repository's inverse
  stereographic chart.  Its ambient coordinate order is
  `(complex.re, real, complex.im)`.
* `xyzToUnitSphere` decodes all three channels to real numbers and normalizes
  the resulting ray in ordinary Euclidean three-space.

No identification between those maps is asserted.  Likewise, a
`RiemannDerivedMap` only records an explicitly supplied continuous
postcomposition; it is not a classification of spaces derived from the
Riemann sphere.  The flat-torus adapter at the end is an ordinary quotient
map and carries no elliptic or arithmetic interpretation.
-/

public section

namespace Surface.Core.XYZ

noncomputable section

open Function Metric Set Topology
open Surface.Core.RiemannCompactification
open scoped RealInnerProductSpace

/-! ## Exact rational chromaticity -/

/-- A protocol XYZ value together with the exact V1 normalization invariant. -/
@[ext, surface_novel]
structure NormalizedXYZPoint where
  value : FixedXYZ xyzFormatV1
  invariant : normalizedTristimulusInvariant xyzFormatV1 value

/-- The sum of the exactly decoded rational channels. -/
@[expose]
def xyzChromaticityDenominator (xyz : NormalizedXYZPoint) : ℚ :=
  xyz.value.x.toRat + xyz.value.y.toRat + xyz.value.z.toRat

/-- Exact rational `x = X / (X + Y + Z)` chromaticity. -/
@[expose]
def xChromaticity (xyz : NormalizedXYZPoint) : ℚ :=
  xyz.value.x.toRat / xyzChromaticityDenominator xyz

/-- Exact rational `y = Y / (X + Y + Z)` chromaticity. -/
@[expose]
def yChromaticity (xyz : NormalizedXYZPoint) : ℚ :=
  xyz.value.y.toRat / xyzChromaticityDenominator xyz

/-- Exact rational `z = Z / (X + Y + Z)` chromaticity. -/
@[expose]
def zChromaticity (xyz : NormalizedXYZPoint) : ℚ :=
  xyz.value.z.toRat / xyzChromaticityDenominator xyz

@[surface_novel, surface_published]
theorem xyzChromaticity_denominator_eq_one (xyz : NormalizedXYZPoint) :
    xyzChromaticityDenominator xyz = 1 := by
  have hinvariant := congrArg (fun n : ℤ ↦ (n : ℚ)) xyz.invariant
  simp only [xyzFormatV1] at hinvariant
  simp only [xyzChromaticityDenominator, FixedChannel.toRat, xyzFormatV1]
  norm_num at hinvariant ⊢
  linarith

@[surface_novel, surface_published]
theorem xyzChromaticity_denominator_ne_zero (xyz : NormalizedXYZPoint) :
    xyzChromaticityDenominator xyz ≠ 0 := by
  rw [xyzChromaticity_denominator_eq_one]
  exact one_ne_zero

@[surface_novel, surface_published]
theorem xyzChromaticity_sum_one (xyz : NormalizedXYZPoint) :
    xChromaticity xyz + yChromaticity xyz + zChromaticity xyz = 1 := by
  rw [xChromaticity, yChromaticity, zChromaticity]
  field_simp [xyzChromaticity_denominator_ne_zero xyz]
  rfl

/-- The finite complex chart uses `(xChromaticity, yChromaticity)` as its
real and imaginary coordinates. -/
@[expose]
def xyzChromaticityComplex (xyz : NormalizedXYZPoint) : ℂ :=
  ⟨(xChromaticity xyz : ℝ), (yChromaticity xyz : ℝ)⟩

/-- The normalized color is sent to the finite branch of the Alexandroff
compactification. -/
@[expose]
def xyzToRiemannSphere (xyz : NormalizedXYZPoint) : RiemannSphere :=
  (xyzChromaticityComplex xyz : RiemannSphere)

/-- Inverse stereographic projection into the repository's axis-sphere
model, whose displayed order is `(complex.re, real, complex.im)`. -/
@[expose]
def xyzToAxisSphere (xyz : NormalizedXYZPoint) : AxisSphere :=
  riemannSphereHomeomorph (xyzToRiemannSphere xyz)

@[surface_novel, surface_published]
theorem xyzToRiemannSphere_is_finite (xyz : NormalizedXYZPoint) :
    xyzToRiemannSphere xyz ≠ infinity := by
  have hmem :
      riemannSphereHomeomorph (xyzToRiemannSphere xyz) ∈
        Set.range (fun z : ℂ ↦
          riemannSphereHomeomorph (z : RiemannSphere)) :=
    ⟨xyzChromaticityComplex xyz, rfl⟩
  rw [range_finite_stereographic] at hmem
  have hne :
      riemannSphereHomeomorph (xyzToRiemannSphere xyz) ≠
        riemannSphereHomeomorph infinity := by
    simpa only [Set.mem_compl_iff, Set.mem_singleton_iff] using hmem
  exact fun equality ↦ hne (congrArg riemannSphereHomeomorph equality)

/-- An explicit finite-chart witness complementary to
`xyzToRiemannSphere_is_finite`. -/
@[surface_novel, surface_published]
theorem xyzToRiemannSphere_finite_witness (xyz : NormalizedXYZPoint) :
    ∃ z : ℂ, xyzToRiemannSphere xyz = (z : RiemannSphere) :=
  ⟨xyzChromaticityComplex xyz, rfl⟩

@[surface_novel, surface_published]
theorem xyzToAxisSphere_mem_sphere (xyz : NormalizedXYZPoint) :
    (xyzToAxisSphere xyz : Ambient) ∈
      Metric.sphere (0 : Ambient) 1 :=
  (xyzToAxisSphere xyz).property

/-- Exact inverse-stereographic components after substituting the rational
chromaticities.  The coordinate order is `(complex.re, real, complex.im)`. -/
@[surface_novel, surface_published]
theorem xyzToAxisSphere_components (xyz : NormalizedXYZPoint) :
    let u : ℝ := (xChromaticity xyz : ℝ)
    let v : ℝ := (yChromaticity xyz : ℝ)
    let p := (xyzToAxisSphere xyz : Ambient).ofLp
    (p.1.re, p.2, p.1.im) =
      (2 * u / (u ^ 2 + v ^ 2 + 1),
        (u ^ 2 + v ^ 2 - 1) / (u ^ 2 + v ^ 2 + 1),
        2 * v / (u ^ 2 + v ^ 2 + 1)) := by
  simpa [xyzToAxisSphere, xyzToRiemannSphere, xyzChromaticityComplex] using
    (riemannSphereHomeomorph_components
      (u := (xChromaticity xyz : ℝ))
      (v := (yChromaticity xyz : ℝ)))

/-! ## Direct Euclidean ray normalization -/

/-- The exact real decoding of all three fixed-point channels in genuine
Euclidean three-space, in ordinary `(X,Y,Z)` coordinate order. -/
@[expose]
def xyzRealVector (xyz : NormalizedXYZPoint) : EuclideanSpace ℝ (Fin 3) :=
  WithLp.toLp 2 ![
    xyz.value.x.toReal,
    xyz.value.y.toReal,
    xyz.value.z.toReal]

@[surface_novel, surface_published]
theorem xyzRealVector_coordinate_sum (xyz : NormalizedXYZPoint) :
    xyzRealVector xyz 0 + xyzRealVector xyz 1 + xyzRealVector xyz 2 = 1 := by
  have hinvariant := congrArg (fun n : ℤ ↦ (n : ℝ)) xyz.invariant
  simp only [xyzFormatV1] at hinvariant
  simp only [xyzRealVector, FixedChannel.toReal, xyzFormatV1,
    PiLp.toLp_apply, Matrix.cons_val_zero, Matrix.cons_val_one,
    Matrix.cons_val_two]
  norm_num at hinvariant ⊢
  linarith

@[surface_novel, surface_published]
theorem xyzRealVector_ne_zero (xyz : NormalizedXYZPoint) :
    xyzRealVector xyz ≠ 0 := by
  intro hzero
  have h0 := congrArg (fun v : EuclideanSpace ℝ (Fin 3) ↦ v 0) hzero
  have h1 := congrArg (fun v : EuclideanSpace ℝ (Fin 3) ↦ v 1) hzero
  have h2 := congrArg (fun v : EuclideanSpace ℝ (Fin 3) ↦ v 2) hzero
  have hsum := xyzRealVector_coordinate_sum xyz
  simp only [PiLp.zero_apply] at h0 h1 h2
  rw [h0, h1, h2] at hsum
  norm_num at hsum

/-- The ordinary normalized XYZ ray.  This is not the Riemann-sphere chart. -/
@[expose]
def xyzToUnitSphere (xyz : NormalizedXYZPoint) :
    Metric.sphere (0 : EuclideanSpace ℝ (Fin 3)) 1 :=
  ⟨‖xyzRealVector xyz‖⁻¹ • xyzRealVector xyz, by
    rw [mem_sphere_zero_iff_norm, norm_smul, Real.norm_eq_abs,
      abs_inv, abs_norm, inv_mul_cancel₀]
    exact norm_ne_zero_iff.mpr (xyzRealVector_ne_zero xyz)⟩

@[surface_novel, surface_published]
theorem xyzToUnitSphere_mem_sphere (xyz : NormalizedXYZPoint) :
    (xyzToUnitSphere xyz : EuclideanSpace ℝ (Fin 3)) ∈
      Metric.sphere (0 : EuclideanSpace ℝ (Fin 3)) 1 :=
  (xyzToUnitSphere xyz).property

/-! ## Explicit continuous postcomposition -/

/-- An explicitly named continuous map out of the Riemann sphere.  Supplying
this data is the only sense in which this module calls a target "derived". -/
@[surface_novel]
structure RiemannDerivedMap (Target : Type*) [TopologicalSpace Target] where
  toFun : RiemannSphere → Target
  continuous_toFun : Continuous toFun
  mapId : String

/-- Postcompose an explicitly supplied Riemann-derived map with another
explicit continuous function. -/
@[expose]
def RiemannDerivedMap.postcomp
    {Middle Target : Type*}
    [TopologicalSpace Middle] [TopologicalSpace Target]
    (derived : RiemannDerivedMap Middle)
    (outer : Middle → Target) (continuous_outer : Continuous outer)
    (composedMapId : String) : RiemannDerivedMap Target where
  toFun := outer ∘ derived.toFun
  continuous_toFun := continuous_outer.comp derived.continuous_toFun
  mapId := composedMapId

/-- The identity map is the neutral explicitly derived map. -/
@[expose]
def RiemannDerivedMap.identity : RiemannDerivedMap RiemannSphere where
  toFun := id
  continuous_toFun := continuous_id
  mapId := "riemann-sphere.identity.v1"

/-- Apply an explicit continuous postcomposition to the finite chromaticity
point. -/
@[expose]
def xyzToDerivedTopology
    {Target : Type*} [TopologicalSpace Target]
    (derived : RiemannDerivedMap Target) :
    NormalizedXYZPoint → Target :=
  derived.toFun ∘ xyzToRiemannSphere

@[surface_novel, surface_published]
theorem xyzToDerivedTopology_comp
    {Middle Target : Type*}
    [TopologicalSpace Middle] [TopologicalSpace Target]
    (derived : RiemannDerivedMap Middle)
    (outer : Middle → Target) (continuous_outer : Continuous outer)
    (composedMapId : String) :
    xyzToDerivedTopology
        (derived.postcomp outer continuous_outer composedMapId) =
      outer ∘ xyzToDerivedTopology derived := by
  rfl

@[surface_novel, surface_published]
theorem xyzToDerivedTopology_identity :
    xyzToDerivedTopology RiemannDerivedMap.identity =
      xyzToRiemannSphere := by
  rfl

/-! A real-domain adapter makes the continuity claim nontrivial and avoids
putting an artificial topology on fixed wire integers. -/

/-- Positive-total real XYZ triples, used only as a continuous-domain
adapter. -/
abbrev PositiveXYZRealDomain :=
  {p : ℝ × ℝ × ℝ // 0 < p.1 + p.2.1 + p.2.2}

/-- The continuous real-domain chromaticity chart. -/
@[expose]
def positiveXYZChromaticityComplex (p : PositiveXYZRealDomain) : ℂ :=
  let denominator := p.val.1 + p.val.2.1 + p.val.2.2
  Complex.equivRealProdCLM.symm
    (p.val.1 / denominator, p.val.2.1 / denominator)

/-- The corresponding finite Riemann-sphere point. -/
@[expose]
def positiveXYZToRiemannSphere (p : PositiveXYZRealDomain) : RiemannSphere :=
  (positiveXYZChromaticityComplex p : RiemannSphere)

@[surface_novel, surface_published]
theorem continuous_positiveXYZChromaticityComplex :
    Continuous positiveXYZChromaticityComplex := by
  unfold positiveXYZChromaticityComplex
  apply Complex.equivRealProdCLM.symm.continuous.comp
  have hfirst : Continuous (fun p : PositiveXYZRealDomain ↦
      p.val.1 / (p.val.1 + p.val.2.1 + p.val.2.2)) := by
    apply Continuous.div
    · exact continuous_subtype_val.fst
    · fun_prop
    · intro p
      exact ne_of_gt p.property
  have hsecond : Continuous (fun p : PositiveXYZRealDomain ↦
      p.val.2.1 / (p.val.1 + p.val.2.1 + p.val.2.2)) := by
    apply Continuous.div
    · exact continuous_subtype_val.snd.fst
    · fun_prop
    · intro p
      exact ne_of_gt p.property
  exact hfirst.prodMk hsecond

@[surface_novel, surface_published]
theorem continuous_positiveXYZToRiemannSphere :
    Continuous positiveXYZToRiemannSphere := by
  exact finiteChart_isOpenEmbedding.continuous.comp
    continuous_positiveXYZChromaticityComplex

@[surface_novel, surface_published]
theorem continuous_positiveXYZToDerivedTopology
    {Target : Type*} [TopologicalSpace Target]
    (derived : RiemannDerivedMap Target) :
    Continuous (derived.toFun ∘ positiveXYZToRiemannSphere) :=
  derived.continuous_toFun.comp continuous_positiveXYZToRiemannSphere

/-! ## Flat presentation torus -/

/-- A product of two additive unit circles.  No elliptic uniformization or
arithmetic field is part of this abbreviation. -/
abbrev FlatColorTorus := UnitAddCircle × UnitAddCircle

/-- Reduce the two exact chromaticity coordinates modulo one. -/
@[expose]
def xyzToFlatColorTorus (xyz : NormalizedXYZPoint) : FlatColorTorus :=
  ((xChromaticity xyz : ℝ), (yChromaticity xyz : ℝ))

end

end Surface.Core.XYZ
