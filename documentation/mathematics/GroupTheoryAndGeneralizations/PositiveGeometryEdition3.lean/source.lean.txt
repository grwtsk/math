import FormalResearch.PositiveAtlas.Certification
import Mathlib

/-!
# Positive atlas geometry

This module introduces the first positive-geometric layer of the atlas.

The primitive object is a symmetric positive semidefinite real bilinear form.
Pullback along a linear transport preserves positivity.  Phase-II provenance
reduction is represented abstractly by a certified residual map; its residual
geometry is the pullback of the ambient positive form.

This file does not assert that a particular residual map is the Moore--Penrose
Schur-complement residual.  A later finite-dimensional module must construct that
map and prove the corresponding Schur formula.
-/

namespace FormalResearch.PositiveAtlas

universe u v

/-- A symmetric positive semidefinite real bilinear form.

The bilinearity laws are fields rather than an imported matrix representation so
that atlas transports can use the same interface in finite- and infinite-
dimensional settings. -/
structure PositiveForm (V : Type u) [AddCommGroup V] [Module ℝ V] where
  /-- Real bilinear pairing required to be symmetric and nonnegative on the diagonal. -/
  form : V → V → ℝ
  add_left : ∀ x y z, form (x + y) z = form x z + form y z
  smul_left : ∀ (a : ℝ) x y, form (a • x) y = a * form x y
  add_right : ∀ x y z, form x (y + z) = form x y + form x z
  smul_right : ∀ (a : ℝ) x y, form x (a • y) = a * form x y
  symmetric : ∀ x y, form x y = form y x
  nonnegative : ∀ x, 0 ≤ form x x

namespace PositiveForm

variable {V : Type u} [AddCommGroup V] [Module ℝ V]
variable {W : Type v} [AddCommGroup W] [Module ℝ W]

/-- A direction is projectively visible when its positive quadratic value is
strictly positive. -/
def Visible (G : PositiveForm V) (x : V) : Prop :=
  0 < G.form x x

/-- A direction is null when its quadratic value vanishes. -/
def IsNull (G : PositiveForm V) (x : V) : Prop :=
  G.form x x = 0

/-- Pull a positive geometry back along a linear transport. -/
def pullback (G : PositiveForm V) (f : W →ₗ[ℝ] V) : PositiveForm W where
  form x y := G.form (f x) (f y)
  add_left x y z := by
    rw [f.map_add, G.add_left]
  smul_left a x y := by
    rw [f.map_smul, G.smul_left]
  add_right x y z := by
    rw [f.map_add, G.add_right]
  smul_right a x y := by
    rw [f.map_smul, G.smul_right]
  symmetric x y := G.symmetric (f x) (f y)
  nonnegative x := G.nonnegative (f x)

/-- Positivity is preserved by every linear pullback. -/
theorem pullback_nonnegative (G : PositiveForm V) (f : W →ₗ[ℝ] V) (x : W) :
    0 ≤ (G.pullback f).form x x :=
  (G.pullback f).nonnegative x

/-- Pullback visibility is exactly visibility of the transported direction. -/
theorem pullback_visible_iff (G : PositiveForm V) (f : W →ₗ[ℝ] V) (x : W) :
    (G.pullback f).Visible x ↔ G.Visible (f x) :=
  Iff.rfl

/-- Pullback nullity is exactly nullity of the transported direction. -/
theorem pullback_isNull_iff (G : PositiveForm V) (f : W →ₗ[ℝ] V) (x : W) :
    (G.pullback f).IsNull x ↔ G.IsNull (f x) :=
  Iff.rfl

/-- Sum two positive geometries on the same carrier. -/
def add (G H : PositiveForm V) : PositiveForm V where
  form x y := G.form x y + H.form x y
  add_left x y z := by
    rw [G.add_left, H.add_left]
    ring
  smul_left a x y := by
    rw [G.smul_left, H.smul_left]
    ring
  add_right x y z := by
    rw [G.add_right, H.add_right]
    ring
  smul_right a x y := by
    rw [G.smul_right, H.smul_right]
    ring
  symmetric x y := by
    rw [G.symmetric x y, H.symmetric x y]
  nonnegative x := add_nonneg (G.nonnegative x) (H.nonnegative x)

/-- The sum of positive geometries remains positive. -/
theorem add_nonnegative (G H : PositiveForm V) (x : V) :
    0 ≤ (G.add H).form x x :=
  (G.add H).nonnegative x

end PositiveForm

/-- A Phase-II provenance reduction is represented by the residual linear
transport from autonomous coordinates into the ambient positive geometry.

The canonical Schur-complement residual is intended to instantiate this
structure once its finite-dimensional construction has been proved. -/
structure ProvenanceResidualization
    (Ambient : Type u) (Residual : Type v)
    [AddCommGroup Ambient] [Module ℝ Ambient]
    [AddCommGroup Residual] [Module ℝ Residual] where
  /-- Linear realization of residual coordinates in the ambient space. -/
  residualMap : Residual →ₗ[ℝ] Ambient

namespace ProvenanceResidualization

variable {Ambient : Type u} {Residual : Type v}
variable [AddCommGroup Ambient] [Module ℝ Ambient]
variable [AddCommGroup Residual] [Module ℝ Residual]

/-- The autonomous residual geometry is the ambient positive form pulled back
through the certified residual map. -/
def residualForm (R : ProvenanceResidualization Ambient Residual)
    (G : PositiveForm Ambient) : PositiveForm Residual :=
  G.pullback R.residualMap

/-- Every certified residualization inherits a positive semidefinite geometry. -/
theorem residual_nonnegative (R : ProvenanceResidualization Ambient Residual)
    (G : PositiveForm Ambient) (u : Residual) :
    0 ≤ (R.residualForm G).form u u :=
  (R.residualForm G).nonnegative u

/-- A residual coordinate remains visible exactly when its residual image is
visible in the ambient positive geometry. -/
theorem residual_visible_iff (R : ProvenanceResidualization Ambient Residual)
    (G : PositiveForm Ambient) (u : Residual) :
    (R.residualForm G).Visible u ↔ G.Visible (R.residualMap u) :=
  Iff.rfl

/-- A residual coordinate is invisible exactly when its residual image is null
in the ambient positive geometry. -/
theorem residual_isNull_iff (R : ProvenanceResidualization Ambient Residual)
    (G : PositiveForm Ambient) (u : Residual) :
    (R.residualForm G).IsNull u ↔ G.IsNull (R.residualMap u) :=
  Iff.rfl

end ProvenanceResidualization

end FormalResearch.PositiveAtlas
