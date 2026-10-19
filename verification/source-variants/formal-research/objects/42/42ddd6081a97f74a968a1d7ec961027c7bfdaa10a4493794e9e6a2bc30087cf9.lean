module

public import Surface.Refactor.BitSampling

/-! # Finite spectral scheduling witnesses -/

public section

namespace Surface.Refactor

@[surface_novel]
inductive SpectrumRole where
  | cyclicDft
  | samplingMask
  | responseSignal
  | sourceResponseCoherence
  | mixedRadixCharacter
  | walshHadamard
  | directPeriodResidual
deriving DecidableEq, Repr, BEq

@[surface_certificate]
structure SpectralWitness where
  role : SpectrumRole
  inputDigest : ContentHash256
  transformSize : Nat
  realCoefficients : List Int
  imaginaryCoefficients : List Int
  precisionBits : Nat
deriving Repr

@[surface_certificate]
structure DirectPeriodCheck where
  candidatePeriod : Nat
  checkedSampleIndices : List Nat
  residualNumerator : Nat
  residualDenominator : Nat
deriving DecidableEq, Repr

@[expose] def SpectralWitness.authority (_witness : SpectralWitness) :
    RefactorAuthority := .numericalWitness

@[expose] def DirectPeriodCheck.authority (_check : DirectPeriodCheck) :
    RefactorAuthority := .finiteEvidence

@[surface_novel]
structure ValidatedPeriodCandidate where
  spectralCandidate : SpectralWitness
  directCheck : DirectPeriodCheck

@[surface_novel, surface_published]
theorem period_candidate_requires_direct_check (candidate : ValidatedPeriodCandidate) :
    candidate.directCheck.authority = .finiteEvidence :=
  rfl

@[surface_novel, surface_published]
theorem finite_period_residual_is_finite_evidence (check : DirectPeriodCheck) :
    check.authority = .finiteEvidence :=
  rfl

@[surface_novel, surface_published]
theorem spectral_packet_not_kernel_authority (witness : SpectralWitness) :
    witness.authority ≠ .leanKernelChecked := by
  intro h
  cases h

@[surface_novel, surface_published]
theorem sampling_source_spectrum_is_distinct_from_response_spectrum :
    SpectrumRole.samplingMask ≠ .responseSignal := by
  decide

end Surface.Refactor
