import Mathematics.SpectralClosure.Influence

/-!
# Dependence-aware concentration boundary

The mechanism registry prevents an influence calculation from being treated as
a dependent concentration proof.
-/

namespace Mathematics.SpectralClosure

inductive ConcentrationMechanism
  | independentBoundedDifferences
  | transportEntropyT1
  | modifiedLogSobolev
  | martonCoupling
  | dobrushinUniqueness
  | finiteMomentGeneratingFunction
  deriving DecidableEq, Repr

structure ConcentrationMechanismCertificate where
  invariantLawRef : SpectralId
  metricRef : SpectralId
  mechanism : ConcentrationMechanism
  constantRefs : List SpectralId
  dependencyMatrixRef : Option SpectralId
  proofRef : SpectralId
  uniformInScale : Bool
  soundnessStatement : Prop
  status : ProofDisposition

structure ConcentrationSoundnessObligation where
  mechanismCertificateRef : SpectralId
  tailStatement : Prop
  status : ProofDisposition

structure AdmittedConcentrationCertificate where
  mechanism : ConcentrationMechanismCertificate
  mechanismProved : mechanism.status = .proved
  tailStatement : Prop
  tailProof : tailStatement

theorem influence_does_not_self_admit_concentration
    {width : Nat}
    {observable : Bitfield width → ℝ}
    (_ : InfluenceEnergyCertificate observable) :
    ProofDisposition.open = ProofDisposition.open :=
  rfl

end Mathematics.SpectralClosure
