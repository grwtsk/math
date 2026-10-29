-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.IntegralTorsionFactor.Variant79fa69d3b36b6cfdf2716b7920fa8ee5a14b28087bb3e87d1b52e282bf511034","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"79fa69d3b36b6cfdf2716b7920fa8ee5a14b28087bb3e87d1b52e282bf511034","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.IntegralTorsionFactor.Variant79fa69d3b36b6cfdf2716b7920fa8ee5a14b28087bb3e87d1b52e282bf511034","mathematical_subject":"Analysis.Integration","original_sha256":"79fa69d3b36b6cfdf2716b7920fa8ee5a14b28087bb3e87d1b52e282bf511034","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:f8ff4aee8f63f8901f3dcfee/workspace/lib/Surface/Refactor/HomologyInput.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.Authority
public import Mathlib.Data.Nat.Prime.Basic

/-! # Nominal external homology inputs -/


namespace GRWTSK.Analysis.RealAnalysis.Integration.IntegralTorsionFactor.Variant79fa69d3b36b6cfdf2716b7920fa8ee5a14b28087bb3e87d1b52e282bf511034

public section

namespace Surface.Refactor

@[surface_novel]
structure IntegralTorsionFactor where
  factorId : String
  prime : Nat
  primeProof : Nat.Prime prime
  exponent : Nat
  exponentPositive : 0 < exponent
  multiplicity : Nat
  multiplicityPositive : 0 < multiplicity
  cycleIdentifiers : List String

@[surface_certificate]
structure ExactIntegralHomologyPacket where
  sourceId : String
  degree : Nat
  freeRank : Nat
  factors : List IntegralTorsionFactor
  computationReceipt : ContentHash256
  authority : RefactorAuthority := .environmentObserved

@[surface_certificate]
structure SmithNormalFormTorsionPacket where
  sourceId : String
  degree : Nat
  freeRank : Nat
  invariantFactors : List Nat
  factors : List IntegralTorsionFactor
  smithCertificate : ContentHash256
  authority : RefactorAuthority := .environmentObserved

@[surface_certificate]
structure FieldCoefficientHomologyPacket where
  sourceId : String
  degree : Nat
  prime : Nat
  primeProof : Nat.Prime prime
  dimension : Nat
  computationReceipt : ContentHash256
  authority : RefactorAuthority := .finiteEvidence

@[surface_certificate]
structure PersistentFieldEvidencePacket where
  sourceId : String
  prime : Nat
  primeProof : Nat.Prime prime
  intervalCount : Nat
  filtrationDigest : ContentHash256
  authority : RefactorAuthority := .finiteEvidence

@[surface_certificate]
structure NumericalHomologyEstimatePacket where
  sourceId : String
  degree : Nat
  estimatedRank : Nat
  residualNumerator : Int
  residualDenominator : Nat
  authority : RefactorAuthority := .numericalWitness

@[surface_candidate]
structure ModelHomologyProposalPacket where
  sourceId : String
  degree : Nat
  proposedSummary : String
  authority : RefactorAuthority := .modelProposed
deriving Repr

@[surface_novel]
structure UnavailableHomologyInput where
  sourceId : String
  reasonCode : String
  authority : RefactorAuthority := .unavailable
deriving DecidableEq, Repr

@[surface_novel]
inductive HomologyInput where
  | exactIntegral (packet : ExactIntegralHomologyPacket)
  | smithCertified (packet : SmithNormalFormTorsionPacket)
  | fieldOnly (packet : FieldCoefficientHomologyPacket)
  | persistentFieldOnly (packet : PersistentFieldEvidencePacket)
  | numericalEstimate (packet : NumericalHomologyEstimatePacket)
  | modelProposal (packet : ModelHomologyProposalPacket)
  | unavailable (packet : UnavailableHomologyInput)

@[surface_novel]
inductive HomologyPrecision where
  | exactIntegral
  | smithCertified
  | fieldOnly
  | persistentFieldOnly
  | numericalEstimate
  | modelProposal
  | unavailable
deriving DecidableEq, Repr, BEq

/-- Exact exponent references exist only for exact integral or Smith packets. -/
@[surface_certificate]
inductive ExactTorsionPowerAuthorization : HomologyPrecision → Type where
  | integral (receipt : ContentHash256) :
      ExactTorsionPowerAuthorization .exactIntegral
  | smith (receipt : ContentHash256) :
      ExactTorsionPowerAuthorization .smithCertified

@[surface_novel, surface_published]
theorem field_only_does_not_authorize_exact_torsion_power :
    IsEmpty (ExactTorsionPowerAuthorization .fieldOnly) :=
  ⟨by intro authorization; cases authorization⟩

@[surface_novel, surface_published]
theorem numerical_homology_not_exact_integral_authority :
    IsEmpty (ExactTorsionPowerAuthorization .numericalEstimate) :=
  ⟨by intro authorization; cases authorization⟩

@[surface_novel, surface_published]
theorem model_homology_proposal_not_exact_input :
    IsEmpty (ExactTorsionPowerAuthorization .modelProposal) :=
  ⟨by intro authorization; cases authorization⟩

@[surface_certificate]
structure SmithFactorReference (packet : SmithNormalFormTorsionPacket) where
  index : Fin packet.factors.length

@[expose] def resolveSmithFactor (packet : SmithNormalFormTorsionPacket)
    (reference : SmithFactorReference packet) : IntegralTorsionFactor :=
  packet.factors.get reference.index

@[surface_novel, surface_published]
theorem smith_packet_exponent_reference_is_explicit
    (packet : SmithNormalFormTorsionPacket)
    (reference : SmithFactorReference packet) :
    resolveSmithFactor packet reference ∈ packet.factors :=
  List.get_mem packet.factors reference.index

end Surface.Refactor
