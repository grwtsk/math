import DAF.Rhetorical.Hilbert.Completion
import Mathlib.Analysis.InnerProductSpace.Basic

/-!
# Canonical kernel feature vectors

Each kernel index maps to the completion of its singleton raw vector.  The
inner product of two such vectors is definitionally governed by the supplied
kernel, and their linear span is dense in the completed space.
-/

noncomputable section

namespace DAF.Rhetorical

universe u

variable {Index : Type u} (kernel : PositiveKernel Index)

/-- Canonical feature vector of one kernel index. -/
def rhetoricalVector (index : Index) : RhetoricalSpace kernel :=
  completePreRhetorical kernel <|
    preRhetoricalMk kernel (Raw.basisVector kernel index)

/-- Linear map sending a raw finite combination first through the explicit
radical quotient and then into its completion.  The raw carrier has no
topology or semidefinite inner-product-space instance. -/
def rawToRhetorical : Raw kernel →ₗ[ℂ] RhetoricalSpace kernel :=
  (UniformSpace.Completion.toComplL).toLinearMap.comp
    (Submodule.mkQ (kernelNullSubmodule kernel))

@[simp]
theorem rawToRhetorical_basisVector (index : Index) :
    rawToRhetorical kernel (Raw.basisVector kernel index) =
      rhetoricalVector kernel index :=
  rfl

/-- The raw-to-completion map preserves the kernel inner product. -/
@[simp]
theorem inner_rawToRhetorical (f g : Raw kernel) :
    inner ℂ (rawToRhetorical kernel f) (rawToRhetorical kernel g) =
      Raw.inner kernel f g := by
  change inner ℂ
      (completePreRhetorical kernel (preRhetoricalMk kernel f))
      (completePreRhetorical kernel (preRhetoricalMk kernel g)) = _
  rw [inner_completePreRhetorical,
    preRhetoricalInner_wellDefined]

/-- The completed feature map realizes the supplied kernel exactly. -/
@[simp]
theorem inner_rhetoricalVector (i j : Index) :
    inner ℂ (rhetoricalVector kernel i) (rhetoricalVector kernel j) =
      kernel i j := by
  simp only [rhetoricalVector]
  rw [inner_completePreRhetorical,
    preRhetoricalInner_basisVector]

/-- The squared norm of a feature vector is the real part of the kernel
diagonal. -/
theorem norm_rhetoricalVector_sq (index : Index) :
    ‖rhetoricalVector kernel index‖ ^ 2 =
      (kernel index index).re := by
  rw [norm_sq_eq_re_inner (𝕜 := ℂ), inner_rhetoricalVector]
  exact congrFun RCLike.re_eq_complex_re _

/-- Algebraic span of the canonical feature vectors. -/
def rhetoricalSpan : Submodule ℂ (RhetoricalSpace kernel) :=
  Submodule.span ℂ (Set.range (rhetoricalVector kernel))

/-- Every raw finite combination lands in the algebraic feature span. -/
theorem rawToRhetorical_mem_span (f : Raw kernel) :
    rawToRhetorical kernel f ∈ rhetoricalSpan kernel := by
  classical
  induction f using Finsupp.induction with
  | zero =>
      exact (rhetoricalSpan kernel).zero_mem
  | single_add index scalar tail _ _ inductionHypothesis =>
      rw [map_add]
      apply (rhetoricalSpan kernel).add_mem
      · have basisMem : rhetoricalVector kernel index ∈
            rhetoricalSpan kernel :=
          Submodule.subset_span (Set.mem_range_self index)
        have scaledMem := (rhetoricalSpan kernel).smul_mem scalar basisMem
        have singleEq :
            (Finsupp.single index scalar : Raw kernel) =
              scalar • Raw.basisVector kernel index := by
          ext candidate
          simp [Raw.basisVector]
        rw [singleEq, map_smul, rawToRhetorical_basisVector]
        exact scaledMem
      · exact inductionHypothesis

/-- The canonical feature vectors have dense linear span in the completed
kernel Hilbert space. -/
theorem rhetoricalVector_denseSpan :
    (rhetoricalSpan kernel).topologicalClosure = ⊤ := by
  apply Submodule.dense_iff_topologicalClosure_eq_top.mp
  apply (completePreRhetorical_denseRange kernel).mono
  rintro point ⟨prePoint, rfl⟩
  obtain ⟨rawPoint, rfl⟩ :=
    Submodule.Quotient.mk_surjective
      (kernelNullSubmodule kernel) prePoint
  exact rawToRhetorical_mem_span kernel rawPoint

section ProjectRoles

variable (kernel : PositiveKernel RhetoricalIndex)

/-- Feature vector at an explicitly selected concept/role index. -/
def roleVector
    (concept : Universe.ConceptId) (role : RhetoricalRole) :
    RhetoricalSpace kernel :=
  rhetoricalVector kernel (concept, role)

/-- Base feature of a concept. -/
def conceptVector (concept : Universe.ConceptId) : RhetoricalSpace kernel :=
  roleVector kernel concept .base

/-- Premise-role feature of a concept. -/
def premiseVector (concept : Universe.ConceptId) : RhetoricalSpace kernel :=
  roleVector kernel concept .premise

/-- Conclusion-role feature of a concept. -/
def conclusionVector (concept : Universe.ConceptId) : RhetoricalSpace kernel :=
  roleVector kernel concept .conclusion

/-- Positive-role feature of a concept. -/
def positiveVector (concept : Universe.ConceptId) : RhetoricalSpace kernel :=
  roleVector kernel concept .positive

/-- Negative-role feature of a concept. -/
def negativeVector (concept : Universe.ConceptId) : RhetoricalSpace kernel :=
  roleVector kernel concept .negative

/-- Source-role feature of a concept. -/
def sourceVector (concept : Universe.ConceptId) : RhetoricalSpace kernel :=
  roleVector kernel concept .source

/-- Target-role feature of a concept. -/
def targetVector (concept : Universe.ConceptId) : RhetoricalSpace kernel :=
  roleVector kernel concept .target

@[simp]
theorem inner_roleVector
    (leftConcept rightConcept : Universe.ConceptId)
    (leftRole rightRole : RhetoricalRole) :
    inner ℂ (roleVector kernel leftConcept leftRole)
        (roleVector kernel rightConcept rightRole) =
      kernel (leftConcept, leftRole) (rightConcept, rightRole) :=
  inner_rhetoricalVector kernel _ _

end ProjectRoles

end DAF.Rhetorical
