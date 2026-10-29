-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ProofTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.ClaimAuthority.Variantf2b458a313b1c1c6a4562cd43812cca35cb5cc55db9e18a3cc3d8d60eee56a77","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f2b458a313b1c1c6a4562cd43812cca35cb5cc55db9e18a3cc3d8d60eee56a77","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ProofTheory.SourceCorpus.ClaimAuthority.Variantf2b458a313b1c1c6a4562cd43812cca35cb5cc55db9e18a3cc3d8d60eee56a77","mathematical_subject":"Logic.ProofTheory","original_sha256":"f2b458a313b1c1c6a4562cd43812cca35cb5cc55db9e18a3cc3d8d60eee56a77","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/SmoothFramedSurgery/Scope.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Scope and authority boundary for smooth framed surgery

This module records which parts of the framed-surgery development are proved
directly and which parts require an explicitly supplied geometric capability.
The Euler sign and parity calculations and the algebraic one-handle complex
are kernel-checked.  Smooth gluing, geometric trace comparison, isotopy
extension, tangential extension, dual surgery, and order independence enter
only through explicit capability records in the corresponding focused
modules.

Positive-scalar-curvature surgery, Ricci-flow continuation, point-cloud
reconstruction, and spectral inference are now represented by implications
whose hypotheses are explicit capability values.  Their implication laws are
checked, but the scope ledger supplies no capability witness.  This records
only what was submitted and does not assert that a capability type is empty.
The
status-indexed certificate below has no rule that extracts a conclusion from
conditional status alone.  Consequently an interface, prose, numerical output,
or an external computation cannot silently become theorem authority.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.ClaimAuthority.Variantf2b458a313b1c1c6a4562cd43812cca35cb5cc55db9e18a3cc3d8d60eee56a77

namespace Surface.SmoothFramedSurgery.Scope

/-- The three authority boundaries used by this focused development. -/
inductive ClaimAuthority where
  | kernelProvedArithmetic
  | conditionalSmoothCapability
  | explicitlyUnsubmitted
  deriving DecidableEq, Repr

/-- Topics classified by the scope ledger. -/
inductive ClaimTopic where
  | eulerSignArithmetic
  | dimensionParity
  | smoothGluingAndTrace
  | relativeHandleHomology
  | eulerGluingComparison
  | framedIsotopyAndDuality
  | tangentialExtension
  | disjointFamilyCommutation
  | positiveScalarCurvature
  | ricciFlowContinuation
  | pointCloudReconstruction
  | spectralConsequences
  | capabilityInhabitation
  deriving DecidableEq, Repr

/-- Canonical authority classification for every topic exposed by the ledger. -/
def authorityOf : ClaimTopic → ClaimAuthority
  | .eulerSignArithmetic
  | .dimensionParity => .kernelProvedArithmetic
  | .smoothGluingAndTrace
  | .relativeHandleHomology
  | .eulerGluingComparison
  | .framedIsotopyAndDuality
  | .tangentialExtension
  | .disjointFamilyCommutation
  | .positiveScalarCurvature
  | .ricciFlowContinuation
  | .pointCloudReconstruction
  | .spectralConsequences => .conditionalSmoothCapability
  | .capabilityInhabitation => .explicitlyUnsubmitted

/--
A status-indexed certificate for a proposition.

The conditional constructor retains its hypothesis rather than asserting it.
The unsubmitted constructor contains no theorem payload.  Thus only the first
constructor can be projected directly to a proof of `p`.
-/
inductive ClaimCertificate (p : Prop) : ClaimAuthority → Type where
  | kernelProved (proof : p) :
      ClaimCertificate p .kernelProvedArithmetic
  | conditional
      (hypothesis : Prop)
      (derivation : hypothesis → p) :
      ClaimCertificate p .conditionalSmoothCapability
  | unsubmitted :
      ClaimCertificate p .explicitlyUnsubmitted

/-- Direct proof extraction is available exactly for kernel-proved claims. -/
theorem proof_of_kernelProved
    {p : Prop}
    (certificate : ClaimCertificate p .kernelProvedArithmetic) :
    p := by
  cases certificate with
  | kernelProved proof => exact proof

/-- Conditional evidence exposes its missing hypothesis and its implication. -/
theorem hypothesis_of_conditional
    {p : Prop}
    (certificate : ClaimCertificate p .conditionalSmoothCapability) :
    ∃ hypothesis : Prop, hypothesis → p := by
  cases certificate with
  | conditional hypothesis derivation => exact ⟨hypothesis, derivation⟩

@[simp]
theorem authorityOf_eulerSignArithmetic :
    authorityOf .eulerSignArithmetic = .kernelProvedArithmetic :=
  rfl

@[simp]
theorem authorityOf_smoothGluingAndTrace :
    authorityOf .smoothGluingAndTrace = .conditionalSmoothCapability :=
  rfl

@[simp]
theorem authorityOf_relativeHandleHomology :
    authorityOf .relativeHandleHomology = .conditionalSmoothCapability :=
  rfl

@[simp]
theorem authorityOf_eulerGluingComparison :
    authorityOf .eulerGluingComparison = .conditionalSmoothCapability :=
  rfl

@[simp]
theorem authorityOf_ricciFlowContinuation :
    authorityOf .ricciFlowContinuation = .conditionalSmoothCapability :=
  rfl

@[simp]
theorem authorityOf_positiveScalarCurvature :
    authorityOf .positiveScalarCurvature = .conditionalSmoothCapability :=
  rfl

@[simp]
theorem authorityOf_pointCloudReconstruction :
    authorityOf .pointCloudReconstruction = .conditionalSmoothCapability :=
  rfl

@[simp]
theorem authorityOf_spectralConsequences :
    authorityOf .spectralConsequences = .conditionalSmoothCapability :=
  rfl

@[simp]
theorem authorityOf_capabilityInhabitation :
    authorityOf .capabilityInhabitation = .explicitlyUnsubmitted :=
  rfl

end Surface.SmoothFramedSurgery.Scope
