/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #966 follow-up. Verified generic base: 07139e8a73a8656aa1d15049e766399dcb4987e9.
-/
import GRWTSK.NumberTheory.Moebius.NormControlledAdditiveMultiplicativeBridge

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- The relevant difference space is a constrained subset of source packets,
not the whole ambient finite vector space. -/
abbrev RestrictedDifferenceSpace
    {ι : Type} [Fintype ι] :=
  Set (FiniteCenteredPacket ι)

/-- Lower-frame control only on admissible differences is sufficient for
uniform reconstruction on the constrained arithmetic family. -/
def HasRestrictedLowerFrameBound
    {ι κ : Type} [Fintype ι] [Fintype κ]
    (T : FiniteArithmeticBridge ι κ)
    (D : RestrictedDifferenceSpace (ι := ι))
    (A : ℝ) : Prop :=
  0 < A ∧
    ∀ f, f ∈ D →
      A * finitePacketEnergy f ≤ finitePacketEnergy (T.linearPart f)

/-- A kernel vector obstructs restricted coercivity only when it belongs to
the admissible arithmetic difference space. -/
theorem not_hasRestrictedLowerFrameBound_of_admissibleKernel
    {ι κ : Type} [Fintype ι] [Fintype κ]
    (T : FiniteArithmeticBridge ι κ)
    (D : RestrictedDifferenceSpace (ι := ι))
    (f : FiniteCenteredPacket ι)
    (hfD : f ∈ D)
    (hf : f ≠ 0)
    (hker : T.linearPart f = 0) :
    ∀ A : ℝ, 0 < A → ¬ HasRestrictedLowerFrameBound T D A := by
  intro A hA hframe
  have h := hframe.2 f hfD
  have hzero : finitePacketEnergy (0 : FiniteArithmeticTargetPacket κ) = 0 := by
    simp [finitePacketEnergy]
  rw [hker, hzero] at h
  have henergy : 0 < finitePacketEnergy f := by
    classical
    have hex : ∃ i, f i ≠ 0 := by
      by_contra! hz
      exact hf (funext hz)
    obtain ⟨i, hi⟩ := hex
    have hle : ‖f i‖ ^ 2 ≤ finitePacketEnergy f := by
      exact Finset.single_le_sum
        (fun j _ => sq_nonneg ‖f j‖) (Finset.mem_univ i)
    exact lt_of_lt_of_le (pow_pos (norm_pos_iff.mpr hi) 2) hle
  nlinarith

/-- Full-space noninjectivity alone says nothing about a restricted arithmetic
difference space if no nonzero kernel vector is known to lie in that space. -/
theorem ambientKernel_requires_admissibility
    {ι κ : Type} [Fintype ι] [Fintype κ]
    (T : FiniteArithmeticBridge ι κ)
    (D : RestrictedDifferenceSpace (ι := ι))
    (f : FiniteCenteredPacket ι)
    (_hker : T.linearPart f = 0)
    (hfnot : f ∉ D) :
    ¬ (f ∈ D ∧ f ≠ 0 ∧ T.linearPart f = 0) := by
  intro h
  exact hfnot h.1

/-- Exact source-availability audit at the verified main commit.  The actual
centered fiber and graded Green declarations live on divergent research
ancestries and are not imported by this verified main source.  Consequently
there is currently no typed arithmetic operator whose restricted injectivity
could be proved here. -/
structure ActualArithmeticBridgeAvailability where
  centeredFiniteIndexSetDefinedOnMain : Prop
  centeredActualCoefficientMapDefinedOnMain : Prop
  gradedFiniteFrequencySetDefinedOnMain : Prop
  gradedActualArithmeticCoordinateDefinedOnMain : Prop
  gradedContinuumBackgroundDefinedOnMain : Prop
  commonTypedArithmeticOperatorDefinedOnMain : Prop
  admissibleDifferenceSpaceDefinedFromActualPackets : Prop

/-- Reconstruction residual must remain explicit for any future approximate
left inverse on the actual constrained packet family. -/
def ReconstructionResidual
    {ι κ : Type} [Fintype ι] [Fintype κ]
    (T : FiniteArithmeticBridge ι κ)
    (R : (κ → ℂ) → (ι → ℂ))
    (f : FiniteCenteredPacket ι) : FiniteCenteredPacket ι :=
  f - R (T.linearPart f)

end GRWTSK.RiemannHypothesis

#print axioms GRWTSK.RiemannHypothesis.not_hasRestrictedLowerFrameBound_of_admissibleKernel
#print axioms GRWTSK.RiemannHypothesis.ambientKernel_requires_admissibility
