module

public meta import Surface.Core.Classification
public import Mathlib.Analysis.InnerProductSpace.PiL2
public import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Order.Filter.AtTopBot.Field
import Mathlib.Topology.Algebra.GroupWithZero
import Mathlib.Tactic

/-!
# Explicit stereographic algebra for a spheroid

This file verifies the coordinate algebra for stereographic projection from
the north pole of a spheroid of revolution.  The results are dimension-general
over a finite Euclidean coordinate type.

The scope is deliberately algebraic.  In particular, this file does not
construct a smooth manifold or claim a diffeomorphism.  It proves that the
displayed projection and inverse functions are mutually inverse between the
punctured level set and its Euclidean chart.  A later module may transport
topological, linear, normed, or complete structures across this equivalence.
-/

public section

namespace Surface.Core.SpheroidStereographic

noncomputable section

variable {ι : Type*} [Fintype ι]

/-- The equatorial Euclidean coordinate together with the polar coordinate. -/
abbrev Ambient (ι : Type*) [Fintype ι] := EuclideanSpace ℝ ι × ℝ

/-- The equation of the spheroid with equatorial radius `a` and polar radius
`c`.  Positivity of the radii is imposed on the theorems that need it. -/
def OnSpheroid (a c : ℝ) (p : Ambient ι) : Prop :=
  ‖p.1‖ ^ 2 / a ^ 2 + p.2 ^ 2 / c ^ 2 = 1

/-- The complete spheroid level set. -/
abbrev Spheroid (a c : ℝ) := {p : Ambient ι // OnSpheroid a c p}

/-- The north pole in the ambient coordinates. -/
def north (c : ℝ) : Ambient ι := (0, c)

/-- The spheroid with its north pole removed. -/
abbrev PuncturedSpheroid (a c : ℝ) :=
  {p : Ambient ι // OnSpheroid a c p ∧ p ≠ north c}

/-- The strictly positive denominator in the inverse chart. -/
@[expose] def inverseDenominator (a : ℝ) (u : EuclideanSpace ℝ ι) : ℝ :=
  a ^ 2 + ‖u‖ ^ 2

/-- Public reduction theorem for the inverse-chart denominator. -/
@[simp]
theorem inverseDenominator_apply (a : ℝ) (u : EuclideanSpace ℝ ι) :
    inverseDenominator a u = a ^ 2 + ‖u‖ ^ 2 :=
  rfl

@[simp]
theorem inverseDenominator_pos {a : ℝ} (ha : 0 < a)
    (u : EuclideanSpace ℝ ι) :
    0 < inverseDenominator a u := by
  unfold inverseDenominator
  nlinarith [sq_pos_of_pos ha, sq_nonneg ‖u‖]

/-- The raw inverse-stereographic formula, before packaging its range proof. -/
@[expose] def inverseRaw (a c : ℝ) (u : EuclideanSpace ℝ ι) : Ambient ι :=
  (((2 * a ^ 2) / inverseDenominator a u) • u,
    c * (‖u‖ ^ 2 - a ^ 2) / inverseDenominator a u)

/-- Projection from the north pole to the equatorial plane. -/
@[expose] def project (c : ℝ) (p : PuncturedSpheroid (ι := ι) a c) :
    EuclideanSpace ℝ ι :=
  (c / (c - p.1.2)) • p.1.1

/-- Public reduction theorem for the exact projection coordinates. -/
@[simp]
theorem project_apply (c : ℝ) (p : PuncturedSpheroid (ι := ι) a c) :
    project c p = (c / (c - p.1.2)) • p.1.1 :=
  rfl

private theorem spheroid_polynomial {a c : ℝ} (ha : 0 < a) (hc : 0 < c)
    {p : Ambient ι} (hp : OnSpheroid a c p) :
    c ^ 2 * ‖p.1‖ ^ 2 + a ^ 2 * p.2 ^ 2 = a ^ 2 * c ^ 2 := by
  unfold OnSpheroid at hp
  field_simp [ha.ne', hc.ne'] at hp
  nlinarith

/-- Away from the north pole, the polar coordinate is strictly below `c`.
Consequently the projection denominator is positive, not merely nonzero. -/
@[surface_novel, surface_published]
theorem polar_lt_radius {a c : ℝ} (ha : 0 < a) (hc : 0 < c)
    (p : PuncturedSpheroid (ι := ι) a c) :
    p.1.2 < c := by
  have hpoly := spheroid_polynomial (ι := ι) ha hc p.2.1
  have ha2 : 0 < a ^ 2 := sq_pos_of_pos ha
  have hc2 : 0 < c ^ 2 := sq_pos_of_pos hc
  have hnorm : 0 ≤ ‖p.1.1‖ ^ 2 := sq_nonneg _
  have hzsq : p.1.2 ^ 2 ≤ c ^ 2 := by
    nlinarith [mul_nonneg (le_of_lt (sq_pos_of_pos hc)) hnorm]
  have hzle : p.1.2 ≤ c := by nlinarith
  refine lt_of_le_of_ne hzle ?_
  intro hzc
  apply p.2.2
  apply Prod.ext
  · have hnorm_zero : ‖p.1.1‖ ^ 2 = 0 := by
      rw [hzc] at hpoly
      nlinarith
    change p.1.1 = 0
    exact norm_eq_zero.mp (sq_eq_zero_iff.mp hnorm_zero)
  · exact hzc

@[simp]
theorem projectDenominator_pos {a c : ℝ} (ha : 0 < a) (hc : 0 < c)
    (p : PuncturedSpheroid (ι := ι) a c) :
    0 < c - p.1.2 := by
  linarith [polar_lt_radius ha hc p]

/-- The inverse formula satisfies the spheroid equation. -/
@[surface_novel, surface_published]
theorem inverseRaw_onSpheroid {a c : ℝ} (ha : 0 < a) (hc : 0 < c)
    (u : EuclideanSpace ℝ ι) :
    OnSpheroid a c (inverseRaw a c u) := by
  have hdpos := inverseDenominator_pos (ι := ι) ha u
  have hd : inverseDenominator a u ≠ 0 := hdpos.ne'
  have hcoeff : 0 ≤ (2 * a ^ 2) / inverseDenominator a u := by
    positivity
  unfold OnSpheroid inverseRaw
  dsimp only
  rw [norm_smul, Real.norm_of_nonneg hcoeff]
  field_simp [ha.ne', hc.ne', hd]
  unfold inverseDenominator
  ring

/-- The inverse formula never reaches the north pole. -/
theorem inverseRaw_ne_north {a c : ℝ} (ha : 0 < a) (hc : 0 < c)
    (u : EuclideanSpace ℝ ι) :
    inverseRaw a c u ≠ north c := by
  intro h
  have hpolar := congrArg Prod.snd h
  have hd := (inverseDenominator_pos (ι := ι) ha u).ne'
  unfold inverseRaw north at hpolar
  dsimp only at hpolar
  field_simp [hd, hc.ne'] at hpolar
  unfold inverseDenominator at hpolar
  nlinarith [sq_pos_of_pos ha]

/-- The inverse chart, packaged with its exact level-set and puncture proofs. -/
@[expose] def inverse {a c : ℝ} (ha : 0 < a) (hc : 0 < c)
    (u : EuclideanSpace ℝ ι) : PuncturedSpheroid (ι := ι) a c :=
  ⟨inverseRaw a c u, inverseRaw_onSpheroid ha hc u,
    inverseRaw_ne_north ha hc u⟩

/-- Public reduction theorem for the ambient value of the packaged inverse. -/
@[simp]
theorem inverse_val {a c : ℝ} (ha : 0 < a) (hc : 0 < c)
    (u : EuclideanSpace ℝ ι) :
    (inverse ha hc u).1 = inverseRaw a c u :=
  rfl

/-- Public reduction theorem for the polar coordinate of the inverse chart. -/
@[simp]
theorem inverse_polar {a c : ℝ} (ha : 0 < a) (hc : 0 < c)
    (u : EuclideanSpace ℝ ι) :
    (inverse ha hc u).1.2 =
      c * (‖u‖ ^ 2 - a ^ 2) / inverseDenominator a u :=
  rfl

/-- The Euclidean origin returns to the south pole of the spheroid. -/
@[surface_novel, surface_published, simp]
theorem inverse_zero {a c : ℝ} (ha : 0 < a) (hc : 0 < c) :
    (inverse ha hc (0 : EuclideanSpace ℝ ι)).1 = (0, -c) := by
  rw [inverse_val]
  apply Prod.ext
  · simp [inverseRaw]
  · simp only [inverseRaw, inverseDenominator, norm_zero]
    field_simp [ha.ne']
    ring

/-- Projection after the explicit inverse is the identity. -/
@[surface_novel, surface_published]
theorem project_inverse {a c : ℝ} (ha : 0 < a) (hc : 0 < c)
    (u : EuclideanSpace ℝ ι) :
    project c (inverse ha hc u) = u := by
  have hd := (inverseDenominator_pos (ι := ι) ha u).ne'
  change
    (c / (c - c * (‖u‖ ^ 2 - a ^ 2) / inverseDenominator a u)) •
        (((2 * a ^ 2) / inverseDenominator a u) • u) = u
  rw [smul_smul]
  rw [show
    c / (c - c * (‖u‖ ^ 2 - a ^ 2) / inverseDenominator a u) *
        ((2 * a ^ 2) / inverseDenominator a u) = 1 by
      field_simp [hd, ha.ne', hc.ne']
      unfold inverseDenominator
      ring_nf
      simp [ha.ne']]
  exact one_smul ℝ u

/-- The explicit inverse after projection is the original punctured point. -/
@[surface_novel, surface_published]
theorem inverse_project {a c : ℝ} (ha : 0 < a) (hc : 0 < c)
    (p : PuncturedSpheroid (ι := ι) a c) :
    inverse ha hc (project c p) = p := by
  have hgap : 0 < c - p.1.2 := projectDenominator_pos ha hc p
  have hgap_ne : c - p.1.2 ≠ 0 := hgap.ne'
  have hscale : 0 ≤ c / (c - p.1.2) := by positivity
  have hproject_norm :
      ‖project c p‖ ^ 2 =
        (c / (c - p.1.2)) ^ 2 * ‖p.1.1‖ ^ 2 := by
    rw [project, norm_smul, Real.norm_of_nonneg hscale]
    ring
  have hpoly := spheroid_polynomial (ι := ι) ha hc p.2.1
  have hdenominator :
      inverseDenominator a (project c p) =
        2 * a ^ 2 * c / (c - p.1.2) := by
    unfold inverseDenominator
    rw [hproject_norm]
    field_simp [hgap_ne, hc.ne']
    nlinarith
  apply Subtype.ext
  change inverseRaw a c (project c p) = p.1
  apply Prod.ext
  · change
      ((2 * a ^ 2) / inverseDenominator a (project c p)) •
          project c p = p.1.1
    rw [hdenominator, project, smul_smul]
    rw [show
      (2 * a ^ 2 / (2 * a ^ 2 * c / (c - p.1.2))) *
          (c / (c - p.1.2)) = 1 by
        field_simp [ha.ne', hc.ne', hgap_ne]]
    exact one_smul ℝ p.1.1
  · change
      c * (‖project c p‖ ^ 2 - a ^ 2) /
          inverseDenominator a (project c p) = p.1.2
    rw [hdenominator, hproject_norm]
    field_simp [ha.ne', hc.ne', hgap_ne]
    nlinarith

/-! ## Angular parameterization and the tangent half-angle chart -/

/-- The ambient spheroid point with angular parameter measured from the south
pole and equatorial direction `ω`.  The condition `‖ω‖ = 1` is imposed by the
range theorem rather than by this raw coordinate definition. -/
def angularRaw (a c θ : ℝ) (ω : EuclideanSpace ℝ ι) : Ambient ι :=
  ((a * Real.sin θ) • ω, -c * Real.cos θ)

/-- A unit equatorial direction makes the angular formula satisfy the exact
spheroid equation. -/
theorem angularRaw_onSpheroid {a c θ : ℝ} (ha : 0 < a) (hc : 0 < c)
    {ω : EuclideanSpace ℝ ι} (hω : ‖ω‖ = 1) :
    OnSpheroid a c (angularRaw a c θ ω) := by
  unfold OnSpheroid angularRaw
  dsimp only
  rw [norm_smul, hω, mul_one, Real.norm_eq_abs, sq_abs]
  field_simp [ha.ne', hc.ne']
  nlinarith [Real.sin_sq_add_cos_sq θ]

private theorem one_add_cos_pos_of_angle {θ : ℝ}
    (hθ0 : 0 ≤ θ) (hθπ : θ < Real.pi) :
    0 < 1 + Real.cos θ := by
  have hhalf_mem : θ / 2 ∈ Set.Ioo (-(Real.pi / 2)) (Real.pi / 2) := by
    constructor <;> nlinarith [Real.pi_pos]
  have hhalf_cos : 0 < Real.cos (θ / 2) :=
    Real.cos_pos_of_mem_Ioo hhalf_mem
  rw [show θ = 2 * (θ / 2) by ring, Real.cos_two_mul]
  nlinarith [sq_pos_of_pos hhalf_cos]

/-- For `0 ≤ θ < π`, the angular point is distinct from the north pole. -/
theorem angularRaw_ne_north {a c θ : ℝ} (hc : 0 < c)
    (hθ0 : 0 ≤ θ) (hθπ : θ < Real.pi)
    (ω : EuclideanSpace ℝ ι) :
    angularRaw a c θ ω ≠ north c := by
  intro h
  have hpolar := congrArg Prod.snd h
  unfold angularRaw north at hpolar
  dsimp only at hpolar
  have hcos : Real.cos θ = -1 := by
    nlinarith
  have hone := one_add_cos_pos_of_angle hθ0 hθπ
  rw [hcos] at hone
  norm_num at hone

/-- The angular parameterization, packaged as a point of the punctured
spheroid.  Its angle is measured from the south pole. -/
def angularPoint {a c θ : ℝ} (ha : 0 < a) (hc : 0 < c)
    (hθ0 : 0 ≤ θ) (hθπ : θ < Real.pi)
    (ω : EuclideanSpace ℝ ι) (hω : ‖ω‖ = 1) :
    PuncturedSpheroid (ι := ι) a c :=
  ⟨angularRaw a c θ ω, angularRaw_onSpheroid ha hc hω,
    angularRaw_ne_north hc hθ0 hθπ ω⟩

/-- Exact tangent half-angle formula for the stereographic chart. -/
@[surface_novel, surface_published]
theorem project_angularPoint {a c θ : ℝ} (ha : 0 < a) (hc : 0 < c)
    (hθ0 : 0 ≤ θ) (hθπ : θ < Real.pi)
    (ω : EuclideanSpace ℝ ι) (hω : ‖ω‖ = 1) :
    project c (angularPoint ha hc hθ0 hθπ ω hω) =
      (a * Real.tan (θ / 2)) • ω := by
  have hhalf_mem : θ / 2 ∈ Set.Ioo (-(Real.pi / 2)) (Real.pi / 2) := by
    constructor <;> nlinarith [Real.pi_pos]
  have hhalf_cos_pos : 0 < Real.cos (θ / 2) :=
    Real.cos_pos_of_mem_Ioo hhalf_mem
  have hhalf_cos : Real.cos (θ / 2) ≠ 0 := hhalf_cos_pos.ne'
  change
    (c / (c - (-c * Real.cos θ))) • ((a * Real.sin θ) • ω) =
      (a * Real.tan (θ / 2)) • ω
  rw [smul_smul]
  congr 1
  rw [show θ = 2 * (θ / 2) by ring, Real.sin_two_mul,
    Real.cos_two_mul, Real.tan_eq_sin_div_cos]
  field_simp [hc.ne', hhalf_cos]
  ring

/-- The transported chart norm of an angular point is the tangent half-angle
radius `a * tan (θ / 2)`. -/
@[surface_novel, surface_published]
theorem norm_project_angularPoint {a c θ : ℝ} (ha : 0 < a) (hc : 0 < c)
    (hθ0 : 0 ≤ θ) (hθπ : θ < Real.pi)
    (ω : EuclideanSpace ℝ ι) (hω : ‖ω‖ = 1) :
    ‖project c (angularPoint ha hc hθ0 hθπ ω hω)‖ =
      a * Real.tan (θ / 2) := by
  rw [project_angularPoint ha hc hθ0 hθπ ω hω, norm_smul, hω, mul_one]
  rw [Real.norm_of_nonneg]
  exact mul_nonneg ha.le
    (Real.tan_nonneg_of_nonneg_of_le_pi_div_two (by linarith) (by linarith))

/-- As the angular parameter approaches the north pole (`θ → π` from below),
the exact Banach/chart radius `a * tan (θ / 2)` tends to positive infinity.
This is a statement about the transported stereographic norm, not the
intrinsic spheroid distance. -/
@[surface_novel, surface_published]
theorem tendsto_chartRadius_at_north {a : ℝ} (ha : 0 < a) :
    Filter.Tendsto (fun θ : ℝ => a * Real.tan (θ / 2))
      (nhdsWithin Real.pi (Set.Iio Real.pi)) Filter.atTop := by
  have hhalf :
      Filter.Tendsto (fun θ : ℝ => θ / 2)
        (nhdsWithin Real.pi (Set.Iio Real.pi))
        (nhdsWithin (Real.pi / 2) (Set.Iio (Real.pi / 2))) := by
    refine tendsto_nhdsWithin_iff.mpr ⟨?_, ?_⟩
    · exact (Filter.tendsto_id.div_const 2).mono_left nhdsWithin_le_nhds
    · filter_upwards [eventually_mem_nhdsWithin] with θ hθ
      change θ / 2 < Real.pi / 2
      change θ < Real.pi at hθ
      linarith
  exact (Filter.tendsto_const_mul_atTop_of_pos ha).2
    (Real.tendsto_tan_pi_div_two.comp hhalf)

/-- The explicit algebraic equivalence between the punctured spheroid and its
Euclidean stereographic chart.  No topology is installed by this definition. -/
def chartEquiv {a c : ℝ} (ha : 0 < a) (hc : 0 < c) :
    PuncturedSpheroid (ι := ι) a c ≃ EuclideanSpace ℝ ι where
  toFun := project c
  invFun := inverse ha hc
  left_inv := inverse_project ha hc
  right_inv := project_inverse ha hc

end

end Surface.Core.SpheroidStereographic
