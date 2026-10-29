import Mathematics.SpectralClosure.Concentration

/-!
# Simultaneous typicality and independent witness boundary
-/

namespace Mathematics.SpectralClosure

inductive TestClassUniformization
  | finiteRegistryUnionBound
  | finiteEpsilonNet
  | coveringEntropy
  | genericChaining
  | directOperatorNorm
  | finiteExactEnumeration
  deriving DecidableEq, Repr

structure SimultaneousTypicalityObligation where
  testRegistryRef : SpectralId
  uniformization : TestClassUniformization
  complexityRef : SpectralId
  uniformStatement : Prop
  status : ProofDisposition

structure TypicalRealizationProposal
    {width : Nat} where
  realization : Bitfield width
  realizationRef : SpectralId
  arithmeticCutRef : SpectralId
  witnessRef : SpectralId
  proposedTypicalityStatement : Prop

inductive RealizationAdmission
  | proposed
  | independentlyVerified
  | ownerAdmitted
  deriving DecidableEq, Repr

def RealizationAdmission.committed :
    RealizationAdmission → Bool
  | .proposed => false
  | .independentlyVerified => false
  | .ownerAdmitted => true

theorem proposed_realization_cannot_self_commit :
    RealizationAdmission.proposed.committed = false :=
  rfl

end Mathematics.SpectralClosure
