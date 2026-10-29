import DAF.Rhetorical.Hilbert.Null
import Mathlib.LinearAlgebra.Quotient.Basic

/-!
# Kernel-null quotient

`PreRhetoricalSpace` is literally the complex-module quotient of the raw
finitely supported span by its kernel radical.  The descended form is proved
positive definite before any `InnerProductSpace` instance is installed.
-/

noncomputable section

namespace DAF.Rhetorical

universe u

variable {Index : Type u} (kernel : PositiveKernel Index)

/-- The nondegenerate pre-Hilbert space obtained by quotienting null raw
vectors. -/
@[reducible] def PreRhetoricalSpace :=
  (Raw kernel) ⧸ kernelNullSubmodule kernel

/-- Canonical quotient map from raw finite combinations. -/
def preRhetoricalMk (f : Raw kernel) : PreRhetoricalSpace kernel :=
  Submodule.Quotient.mk f

/-- Public representative-invariance theorem for the quotient form.  It is
the proof obligation consumed by `Quotient.liftOn₂'`, and is exposed so
downstream constructions can audit well-definedness without unfolding the
quotient implementation. -/
theorem preRhetoricalInner_representative_invariant
    (left right left' right' : Raw kernel)
    (leftRelated :
      (kernelNullSubmodule kernel).quotientRel left left')
    (rightRelated :
      (kernelNullSubmodule kernel).quotientRel right right') :
    Raw.inner kernel left right = Raw.inner kernel left' right' := by
  have leftDifference :
      left - left' ∈ kernelNullSubmodule kernel :=
    (Submodule.quotientRel_def _).mp leftRelated
  have rightDifference :
      right - right' ∈ kernelNullSubmodule kernel :=
    (Submodule.quotientRel_def _).mp rightRelated
  exact (rawInner_eq_of_sub_mem_left kernel leftDifference right).trans
    (rawInner_eq_of_sub_mem_right kernel left' rightDifference)

/-- The kernel form descended to the radical quotient. -/
def preRhetoricalInner
    (left right : PreRhetoricalSpace kernel) : ℂ :=
  Quotient.liftOn₂' left right (Raw.inner kernel)
    (preRhetoricalInner_representative_invariant kernel)

/-- The descended form is represented by the raw kernel form and is therefore
independent of the selected representatives. -/
@[simp]
theorem preRhetoricalInner_wellDefined (f g : Raw kernel) :
    preRhetoricalInner kernel (preRhetoricalMk kernel f)
      (preRhetoricalMk kernel g) = Raw.inner kernel f g :=
  rfl

/-- The descended sesquilinear form before its quotient definiteness field is
bundled. -/
@[reducible]
private def preRhetoricalPreCore :
    PreInnerProductSpace.Core ℂ (PreRhetoricalSpace kernel) where
  inner := preRhetoricalInner kernel
  conj_inner_symm := by
    intro left right
    refine Submodule.Quotient.induction_on
      (kernelNullSubmodule kernel) left ?_
    intro f
    refine Submodule.Quotient.induction_on
      (kernelNullSubmodule kernel) right ?_
    intro g
    change star (Raw.inner kernel g f) = Raw.inner kernel f g
    exact (Raw.inner_conj_symm kernel f g).symm
  re_inner_nonneg := by
    intro point
    refine Submodule.Quotient.induction_on
      (kernelNullSubmodule kernel) point ?_
    intro f
    change 0 ≤ (Raw.inner kernel f f).re
    exact Raw.inner_self_nonneg kernel f
  add_left := by
    intro left right third
    refine Submodule.Quotient.induction_on
      (kernelNullSubmodule kernel) left ?_
    intro f
    refine Submodule.Quotient.induction_on
      (kernelNullSubmodule kernel) right ?_
    intro g
    refine Submodule.Quotient.induction_on
      (kernelNullSubmodule kernel) third ?_
    intro h
    change Raw.inner kernel (f + g) h =
      Raw.inner kernel f h + Raw.inner kernel g h
    exact Raw.add_left kernel f g h
  smul_left := by
    intro left right scalar
    refine Submodule.Quotient.induction_on
      (kernelNullSubmodule kernel) left ?_
    intro f
    refine Submodule.Quotient.induction_on
      (kernelNullSubmodule kernel) right ?_
    intro g
    change Raw.inner kernel (scalar • f) g =
      star scalar * Raw.inner kernel f g
    exact Raw.conjugate_linear_left kernel scalar f g

/-- Positive-definite inner-product core on the explicit radical quotient. -/
@[reducible]
def preRhetoricalCore :
    InnerProductSpace.Core ℂ (PreRhetoricalSpace kernel) where
  __ := preRhetoricalPreCore kernel
  definite := by
    intro point
    refine Submodule.Quotient.induction_on
      (kernelNullSubmodule kernel) point ?_
    intro f energyZero
    exact (Submodule.Quotient.mk_eq_zero
      (kernelNullSubmodule kernel)).mpr energyZero

/-- The quotient norm is generated only after the radical has been removed. -/
instance instPreRhetoricalNormedAddCommGroup :
    NormedAddCommGroup (PreRhetoricalSpace kernel) :=
  @InnerProductSpace.Core.toNormedAddCommGroup
    ℂ (PreRhetoricalSpace kernel) _ _ _ (preRhetoricalCore kernel)

/-- The quotient, unlike the raw semidefinite span, is a genuine complex
inner-product space. -/
instance instPreRhetoricalInnerProductSpace :
    InnerProductSpace ℂ (PreRhetoricalSpace kernel) :=
  InnerProductSpace.ofCore (preRhetoricalPreCore kernel)

/-- The descended inner product is positive definite. -/
theorem preRhetorical_inner_self_eq_zero_iff
    (f : PreRhetoricalSpace kernel) :
  preRhetoricalInner kernel f f = 0 ↔ f = 0 := by
  change inner ℂ f f = 0 ↔ f = 0
  exact inner_self_eq_zero (𝕜 := ℂ) (x := f)

/-- A raw vector becomes zero in the quotient exactly when it belongs to the
kernel radical. -/
theorem preRhetoricalMk_eq_zero_iff
    (f : Raw kernel) :
    preRhetoricalMk kernel f = 0 ↔
      f ∈ kernelNullSubmodule kernel :=
  by
    unfold preRhetoricalMk PreRhetoricalSpace
    exact Submodule.Quotient.mk_eq_zero (kernelNullSubmodule kernel)

@[simp]
theorem preRhetoricalInner_basisVector
    (i j : Index) :
    preRhetoricalInner kernel
        (preRhetoricalMk kernel (Raw.basisVector kernel i))
        (preRhetoricalMk kernel (Raw.basisVector kernel j)) =
      kernel i j := by
  rw [preRhetoricalInner_wellDefined]
  exact Raw.inner_basisVector_basisVector kernel i j

end DAF.Rhetorical
