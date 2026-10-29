import DAF.Rhetorical.FeatureMap
import Mathlib.Analysis.InnerProductSpace.Continuous

/-!
# Reproducing-kernel presentation of rhetorical space

The completed feature space also has a function-space interface: a vector
`x` is evaluated at an index `i` by `⟨Φ(i), x⟩`.  The carrier below is a
project-local type synonym for the completed Hilbert space, equipped with
that evaluation.  The extensionality theorem proves that this really is a
faithful function-space presentation rather than an unrelated extra copy.
-/

noncomputable section

namespace DAF.Rhetorical

universe u

variable {Index : Type u} (kernel : PositiveKernel Index)

/-- The scalar function represented by a completed rhetorical vector. -/
def rhetoricalEvaluation
    (x : RhetoricalSpace kernel) (index : Index) : ℂ :=
  inner ℂ (rhetoricalVector kernel index) x

/-- Project-local RKHS carrier.  Its norm, inner product, and completeness
are transported definitionally from the completed feature space. -/
abbrev RhetoricalFunction := RhetoricalSpace kernel

instance : CoeFun (RhetoricalFunction kernel) (fun _ ↦ Index → ℂ) where
  coe function := rhetoricalEvaluation kernel function

/-- Isometric conversion from the feature-space interface to the RKHS
function-space interface. -/
def toRhetoricalFunction :
    RhetoricalSpace kernel →ₗᵢ[ℂ] RhetoricalFunction kernel :=
  LinearIsometry.id

@[simp]
theorem toRhetoricalFunction_apply
    (x : RhetoricalSpace kernel) (index : Index) :
    toRhetoricalFunction kernel x index =
      inner ℂ (rhetoricalVector kernel index) x :=
  rfl

/-- The RKHS kernel section at `index`. -/
def kernelSection (index : Index) : RhetoricalFunction kernel :=
  rhetoricalVector kernel index

@[simp]
theorem kernelSection_apply (i j : Index) :
    kernelSection kernel i j = kernel j i := by
  exact inner_rhetoricalVector kernel j i

/-- Reproducing property in the project convention (conjugate-linear in the
first argument and linear in the second). -/
@[simp]
theorem reproducing_property
    (function : RhetoricalFunction kernel) (index : Index) :
    function index = inner ℂ (kernelSection kernel index) function :=
  rfl

/-- Equality of all RKHS evaluations determines the completed vector. -/
theorem rhetoricalFunction_ext
    {left right : RhetoricalFunction kernel}
    (equalAt : ∀ index, left index = right index) :
    left = right := by
  have denseSpan : Dense ((rhetoricalSpan kernel : Set
      (RhetoricalSpace kernel))) :=
    Submodule.dense_iff_topologicalClosure_eq_top.mpr
      (rhetoricalVector_denseSpan kernel)
  apply denseSpan.eq_of_inner_right ℂ
  intro vector vectorMem
  change vector ∈ rhetoricalSpan kernel at vectorMem
  refine Submodule.span_induction ?_ ?_ ?_ ?_ vectorMem
  · intro generator generatorMem
    obtain ⟨index, rfl⟩ := generatorMem
    exact equalAt index
  · simp
  · intro leftVector rightVector _ _ leftEqual rightEqual
    simp only [inner_add_left, leftEqual, rightEqual]
  · intro scalar vector _ vectorEqual
    simp only [inner_smul_left, vectorEqual]

/-- Evaluation is injective, so no vector is hidden by the function-space
presentation. -/
theorem toRhetoricalFunction_injective :
    Function.Injective (toRhetoricalFunction kernel) := by
  intro left right equality
  apply rhetoricalFunction_ext kernel
  intro index
  exact congrFun (congrArg (fun function : RhetoricalFunction kernel ↦
    (function : Index → ℂ)) equality) index

/-- The feature and RKHS interfaces are isometrically equivalent. -/
def featureSpace_equiv_RKHS :
    RhetoricalSpace kernel ≃ₗᵢ[ℂ] RhetoricalFunction kernel :=
  LinearIsometryEquiv.refl ℂ (RhetoricalSpace kernel)

@[simp]
theorem featureSpace_equiv_RKHS_apply
    (x : RhetoricalSpace kernel) :
    featureSpace_equiv_RKHS kernel x = toRhetoricalFunction kernel x :=
  rfl

end DAF.Rhetorical
