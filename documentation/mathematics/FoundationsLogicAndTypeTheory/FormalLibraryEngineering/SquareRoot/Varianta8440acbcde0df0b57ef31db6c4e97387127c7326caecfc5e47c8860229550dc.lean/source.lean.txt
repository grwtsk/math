import Mathematics.SpectralClosure.Correspondence
import Mathlib.Tactic.Ring

/-!
# Conditional square-root assembly

These theorems assemble already-certified term bounds.  They do not establish
the arithmetic correspondence, concentration, or uniform analytic estimates
that supply those premises.
-/

namespace Mathematics.SpectralClosure

/-!
Trace stability controls change in an already interpreted trace.  It does not
provide the arithmetic scale of that trace.  A `UniformTraceScaleCertificate`
must bind the scaling factor, finite Hilbert-space dimension, operator and
transform sizes, normalization, cancellation mechanism, and scale-uniformity
before its square-root estimate can be consumed by an assembly theorem.
-/

structure UniformTraceScaleCertificate where
  scalingFactor : ℝ
  hilbertDimension : Nat
  operatorSize : ℝ
  transformedOperatorSize : ℝ
  traceNormalizationRef : SpectralId
  centeringOrCancellationRef : SpectralId
  uniformityDomainRef : SpectralId
  reducedTraceTerm : ℝ
  squareRootScale : ℝ
  traceConstant : ℝ
  testSeminorm : ℝ
  certified :
    |scalingFactor * reducedTraceTerm| ≤
      traceConstant * squareRootScale * testSeminorm
  proofRef : SpectralId

structure UniformTraceScaleObligation where
  scalingFactorRef : SpectralId
  hilbertDimensionRef : SpectralId
  operatorSizeRef : SpectralId
  transformedOperatorSizeRef : SpectralId
  traceNormalizationRef : SpectralId
  centeringOrCancellationRef : SpectralId
  uniformityDomainRef : SpectralId
  scaleStatement : Prop
  status : ProofDisposition

theorem boundaryLaw_squareRoot_assembly
    (mainTerm reducedTrace regularization bitfield : ℝ)
    (mainBound traceBound regularizationBound bitfieldBound : ℝ)
    (mainCertified : |mainTerm| ≤ mainBound)
    (traceCertified : |reducedTrace| ≤ traceBound)
    (regularizationCertified :
      |regularization| ≤ regularizationBound)
    (bitfieldCertified : |bitfield| ≤ bitfieldBound) :
    |mainTerm + reducedTrace + regularization + bitfield| ≤
      mainBound + traceBound +
        regularizationBound + bitfieldBound := by
  have first := abs_add_le mainTerm reducedTrace
  have second := abs_add_le (mainTerm + reducedTrace) regularization
  have third :=
    abs_add_le
      (mainTerm + reducedTrace + regularization)
      bitfield
  linarith

theorem committedRealization_squareRoot_assembly
    (mainTerm expectedTrace fluctuation regularization bitfield : ℝ)
    (mainBound traceBound fluctuationBound
      regularizationBound bitfieldBound : ℝ)
    (mainCertified : |mainTerm| ≤ mainBound)
    (traceCertified : |expectedTrace| ≤ traceBound)
    (fluctuationCertified : |fluctuation| ≤ fluctuationBound)
    (regularizationCertified :
      |regularization| ≤ regularizationBound)
    (bitfieldCertified : |bitfield| ≤ bitfieldBound) :
    |mainTerm + expectedTrace + fluctuation +
        regularization + bitfield| ≤
      mainBound + traceBound + fluctuationBound +
        regularizationBound + bitfieldBound := by
  have first := abs_add_le mainTerm expectedTrace
  have second := abs_add_le (mainTerm + expectedTrace) fluctuation
  have third :=
    abs_add_le
      (mainTerm + expectedTrace + fluctuation)
      regularization
  have fourth :=
    abs_add_le
      (mainTerm + expectedTrace + fluctuation + regularization)
      bitfield
  linarith

theorem robustPerturbation_squareRoot_assembly
    (lawDefect operatorDefect correspondenceDefect
      remainderDefect : ℝ)
    (_lawNonnegative : 0 ≤ lawDefect)
    (_operatorNonnegative : 0 ≤ operatorDefect)
    (_correspondenceNonnegative : 0 ≤ correspondenceDefect)
    (_remainderNonnegative : 0 ≤ remainderDefect)
    (observed : ℝ)
    (certified :
      |observed| ≤
        lawDefect + operatorDefect +
          correspondenceDefect + remainderDefect) :
    |observed| ≤
      lawDefect + operatorDefect +
        correspondenceDefect + remainderDefect :=
  certified

theorem commonBoundaryTrace_squareRoot_assembly
    (mainTerm reducedTrace regularization
      bitfield stability : ℝ)
    (scale mainConstant traceConstant
      regularizationConstant bitfieldConstant
      stabilityConstant : ℝ)
    (mainCertified :
      |mainTerm| ≤ mainConstant * scale)
    (traceCertified :
      |reducedTrace| ≤ traceConstant * scale)
    (regularizationCertified :
      |regularization| ≤
        regularizationConstant * scale)
    (bitfieldCertified :
      |bitfield| ≤ bitfieldConstant * scale)
    (stabilityCertified :
      |stability| ≤ stabilityConstant * scale) :
    |mainTerm + reducedTrace + regularization +
        bitfield + stability| ≤
      (mainConstant + traceConstant +
        regularizationConstant + bitfieldConstant +
        stabilityConstant) * scale := by
  have assembled :=
    committedRealization_squareRoot_assembly
      mainTerm reducedTrace regularization bitfield stability
      (mainConstant * scale)
      (traceConstant * scale)
      (regularizationConstant * scale)
      (bitfieldConstant * scale)
      (stabilityConstant * scale)
      mainCertified traceCertified regularizationCertified
      bitfieldCertified stabilityCertified
  calc
    |mainTerm + reducedTrace + regularization +
        bitfield + stability| ≤
        mainConstant * scale + traceConstant * scale +
          regularizationConstant * scale +
          bitfieldConstant * scale +
          stabilityConstant * scale := assembled
    _ =
        (mainConstant + traceConstant +
          regularizationConstant + bitfieldConstant +
          stabilityConstant) * scale := by
          ring

inductive RequiredFormalObligation
  | scA01InvariantExistence
  | scA02ContractionUniqueness
  | scA03PseudometricQuotient
  | scA04EquivariantGroupInvariance
  | scA05InvariantLawPerturbation
  | scA06CrossScheduleConvergence
  | scA07CrossedProductSelfAdjointness
  | scA08FunctionalSpectralSymmetry
  | scA09ZeroJordanContribution
  | scA10CanonicalTraceProperties
  | scA11LawTraceStability
  | scA12OperatorTraceStability
  | scA13ConcentrationSoundness
  | scA14SimultaneousTypicality
  | scA15ArithmeticTraceCorrespondence
  | scA16BoundaryLawSquareRoot
  | scA17CommittedRealizationSquareRoot
  | scA18AuthorityNoninterference
  | scA19RuntimeCannotManufactureTheorems
  | scA20OwnerAdmissionNecessary
  deriving DecidableEq, Repr

structure FormalObligationStatus where
  obligation : RequiredFormalObligation
  disposition : ProofDisposition
  declarationName : SpectralId

def requiredFormalObligationStatuses :
    List FormalObligationStatus :=
  [ ⟨.scA01InvariantExistence, .open,
      "FiniteInvariantLawExistenceObligation"⟩
  , ⟨.scA02ContractionUniqueness, .proved,
      "invariantLaw_unique_under_strict_contraction"⟩
  , ⟨.scA03PseudometricQuotient, .proved,
      "zeroDistance_equivalence"⟩
  , ⟨.scA04EquivariantGroupInvariance, .proved,
      "unique_equivariant_invariant_law_is_group_invariant"⟩
  , ⟨.scA05InvariantLawPerturbation, .proved,
      "stableInvariantLawPerturbation"⟩
  , ⟨.scA06CrossScheduleConvergence, .open,
      "CrossScheduleConvergenceObligation"⟩
  , ⟨.scA07CrossedProductSelfAdjointness, .proved,
      "crossedProductOperator_selfAdjoint"⟩
  , ⟨.scA08FunctionalSpectralSymmetry, .proved,
      "functional_symmetry_reflects_eigenpair"⟩
  , ⟨.scA09ZeroJordanContribution, .open,
      "JordanSemisimplicityObligation"⟩
  , ⟨.scA10CanonicalTraceProperties, .proved,
      "canonicalTrace_add"⟩
  , ⟨.scA11LawTraceStability, .open,
      "LawTraceStabilityObligation"⟩
  , ⟨.scA12OperatorTraceStability, .proved,
      "law_and_operator_trace_defects_compose"⟩
  , ⟨.scA13ConcentrationSoundness, .open,
      "ConcentrationSoundnessObligation"⟩
  , ⟨.scA14SimultaneousTypicality, .open,
      "SimultaneousTypicalityObligation"⟩
  , ⟨.scA15ArithmeticTraceCorrespondence, .open,
      "ArithmeticTraceCorrespondenceCertificate"⟩
  , ⟨.scA16BoundaryLawSquareRoot, .proved,
      "boundaryLaw_squareRoot_assembly"⟩
  , ⟨.scA17CommittedRealizationSquareRoot, .proved,
      "committedRealization_squareRoot_assembly"⟩
  , ⟨.scA18AuthorityNoninterference, .proved,
      "spectral_artifacts_cannot_commit"⟩
  , ⟨.scA19RuntimeCannotManufactureTheorems, .proved,
      "runtime_observations_cannot_manufacture_theorem_certificates"⟩
  , ⟨.scA20OwnerAdmissionNecessary, .proved,
      "owner_admission_is_necessary_for_committed_realization"⟩
  ]

def provedFormalObligationCount : Nat :=
  (requiredFormalObligationStatuses.filter
    (fun entry => entry.disposition == .proved)).length

def openFormalObligationCount : Nat :=
  (requiredFormalObligationStatuses.filter
    (fun entry => entry.disposition == .open)).length

theorem requiredFormalObligation_count :
    requiredFormalObligationStatuses.length = 20 := by
  decide

theorem provedFormalObligation_count :
    provedFormalObligationCount = 13 := by
  decide

theorem openFormalObligation_count :
    openFormalObligationCount = 7 := by
  decide

end Mathematics.SpectralClosure
