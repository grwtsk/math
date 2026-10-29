import Mathematics.Hilbert.SemanticRealization

/-!
# Semidefinite realization boundary

The zero positive kernel is a concrete witness that positive
semidefiniteness and upper boundedness do not make the Banach-to-Hilbert
realization injective.  The one-atom semantic Banach state is nonzero while
its Hilbert image vanishes.
-/

noncomputable section

namespace Mathematics.Hilbert.SemanticRealizationBoundary

open Mathematics
open Mathematics.Kernel
open scoped ComplexOrder

/-- Coefficient norm on the one-generator semantic module. -/
def singletonCoefficientSeminorm :
    Seminorm ℂ (Concept.SemanticCombination Unit) :=
  Seminorm.of
    (fun combination ↦ ‖combination ()‖)
    (by
      intro left right
      exact norm_add_le (left ()) (right ()))
    (by
      intro scalar combination
      simp)

theorem singletonCoefficientSeminorm_eq_zero_iff
    (combination : Concept.SemanticCombination Unit) :
    singletonCoefficientSeminorm combination = 0 ↔
      combination = 0 := by
  change ‖combination ()‖ = 0 ↔ combination = 0
  rw [norm_eq_zero]
  constructor
  · intro coefficientZero
    apply Finsupp.ext
    intro index
    cases index
    simpa using coefficientZero
  · intro combinationZero
    simp [combinationZero]

/-- The one-generator semantic norm has no declared quotient relations. -/
def singletonNormData :
    Concept.QuotientNormData Unit where
  relations := ⊥
  semanticSeminorm := singletonCoefficientSeminorm
  null_iff_relations := by
    intro combination
    rw [singletonCoefficientSeminorm_eq_zero_iff]
    simp
  normProfileId := {
    value := "norm-profile:singleton-complex-coefficient"
  }
  normProfileDigest := default

/-- Positive-semidefinite kernel with total radical. -/
def zeroKernel : Kernel.PositiveKernel Unit where
  matrix := 0
  positiveSemidefinite := Matrix.PosSemidef.zero

/-- Every raw vector belongs to the radical of the zero kernel. -/
theorem mem_zeroKernelNull
    (combination : Concept.SemanticCombination Unit) :
    combination ∈ kernelNullSubmodule zeroKernel := by
  rw [mem_kernelNullSubmodule_iff]
  simp [Raw.inner, zeroKernel]

/-- Consequently every raw feature vector maps to zero. -/
@[simp] theorem rawToZeroKernelSpace
    (combination : Concept.SemanticCombination Unit) :
    rawToKernelSpace zeroKernel combination = 0 := by
  change
    completePreKernel zeroKernel
        (preKernelMk zeroKernel combination) = 0
  have quotientZero :
      preKernelMk zeroKernel combination = 0 :=
    (preKernelMk_eq_zero_iff zeroKernel combination).mpr
      (mem_zeroKernelNull combination)
  rw [quotientZero]
  exact map_zero
    (UniformSpace.Completion.toComplL :
      PreKernelSpace zeroKernel →L[ℂ] KernelSpace zeroKernel)

/-- The zero kernel satisfies the upper compatibility interface. -/
def zeroKernelCompatibility :
    KernelCompatibility singletonNormData zeroKernel where
  relations_are_kernel_null := by
    intro combination _
    exact mem_zeroKernelNull combination
  upperConstant := 0
  upperConstant_nonnegative := le_rfl
  bounded_on_raw := by
    intro combination
    rw [rawToZeroKernelSpace]
    simp

/-- The canonical one-atom Banach state is genuinely nonzero. -/
theorem atomState_ne_zero :
    Concept.atomState singletonNormData () ≠ 0 := by
  intro mappedZero
  have relationMember :
      (Finsupp.single () 1 :
        Concept.SemanticCombination Unit) ∈
        singletonNormData.relations :=
    (Concept.rawToBanach_eq_zero_iff singletonNormData _).mp
      mappedZero
  have combinationZero :
      (Finsupp.single () 1 :
        Concept.SemanticCombination Unit) = 0 := by
    change
      (Finsupp.single () 1 :
        Concept.SemanticCombination Unit) ∈
        (⊥ : Submodule ℂ
          (Concept.SemanticCombination Unit)) at relationMember
    simp at relationMember
  have coefficientZero :=
    congrArg
      (fun combination : Concept.SemanticCombination Unit ↦
        combination ())
      combinationZero
  norm_num at coefficientZero

/-- The same nonzero state vanishes under the zero-kernel realization. -/
@[simp] theorem atomState_realizes_as_zero :
    banachToHilbert zeroKernelCompatibility
        (Concept.atomState singletonNormData ()) = 0 := by
  rw [banachToHilbert_atom]
  change
    rawToKernelSpace zeroKernel
        (Raw.basisVector zeroKernel ()) = 0
  exact rawToZeroKernelSpace _

/--
Positive semidefiniteness plus an upper bound is not an injectivity
certificate.
-/
theorem zeroKernel_realization_not_injective :
    ¬ Function.Injective
      (banachToHilbert zeroKernelCompatibility) := by
  intro injective
  apply atomState_ne_zero
  apply injective
  rw [atomState_realizes_as_zero, map_zero]

end Mathematics.Hilbert.SemanticRealizationBoundary
