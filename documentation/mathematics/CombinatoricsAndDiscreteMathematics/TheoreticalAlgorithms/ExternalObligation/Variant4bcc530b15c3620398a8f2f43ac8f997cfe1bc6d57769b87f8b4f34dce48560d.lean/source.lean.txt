-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExternalObligationSpec.Variant424b19eae137d75f64ac0404035063a3f2a199f34a99b855a625513685f92946","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"424b19eae137d75f64ac0404035063a3f2a199f34a99b855a625513685f92946","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ExternalObligationSpec.Variant424b19eae137d75f64ac0404035063a3f2a199f34a99b855a625513685f92946","mathematical_subject":"Computation.DataStructures","original_sha256":"424b19eae137d75f64ac0404035063a3f2a199f34a99b855a625513685f92946","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Prismatic/ExternalObligation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Authority.Kernel
import Mathematics.Prismatic.EulerData

/-!
# Exact external arithmetic obligations

This module intentionally contains no constructor named after BSD,
Bloch--Kato, Iwasawa, or the primorial separator.  Such names become available
only after the corresponding exact Lean proposition has been formalized.
`SEP-PRIME-PRIMORIAL` has one separate authority path in
`PrimeSectorObligation`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExternalObligationSpec.Variant424b19eae137d75f64ac0404035063a3f2a199f34a99b855a625513685f92946

namespace Mathematics.Prismatic

open Mathematics.Authority

/--
One exact externally researched proposition.  Classification is descriptive;
the proposition, declaration, and digest are one inseparable specification.
-/
structure ExternalObligationSpec where
  specificationId : StableId
  semanticName : String
  statement : Prop
  canonicalStatementDigest : Digest
  canonicalStatementDigest_valid : canonicalStatementDigest.Valid
  leanDeclarationName : String

/-- Immutable, versioned trust profile for one exact specification. -/
structure ExternalTheoremObligation
    (specification : ExternalObligationSpec) where
  version : Nat
  parentDigest : Option Digest
  permittedDependencies : List ObjectAddress
  prohibitedDependencies : List ObjectAddress
  environment : FrozenKernelEnvironment
  obligationDigest : Digest
  obligationDigest_valid : obligationDigest.Valid

namespace ExternalTheoremObligation

/-- Obligation identity is derived from the exact specification. -/
def obligationId
    {specification : ExternalObligationSpec}
    (_obligation : ExternalTheoremObligation specification) : StableId :=
  specification.specificationId

/-- The proposition indexed by this obligation is the specification itself. -/
def statement
    {specification : ExternalObligationSpec}
    (_obligation : ExternalTheoremObligation specification) : Prop :=
  specification.statement

/-- The canonical declaration name cannot vary independently of the specification. -/
def leanDeclarationName
    {specification : ExternalObligationSpec}
    (_obligation : ExternalTheoremObligation specification) : String :=
  specification.leanDeclarationName

@[simp]
theorem obligationId_is_specification
    {specification : ExternalObligationSpec}
    (obligation : ExternalTheoremObligation specification) :
    obligation.obligationId = specification.specificationId :=
  rfl

@[simp]
theorem leanDeclarationName_is_specification
    {specification : ExternalObligationSpec}
    (obligation : ExternalTheoremObligation specification) :
    obligation.leanDeclarationName = specification.leanDeclarationName :=
  rfl

end ExternalTheoremObligation

/-- Authoritative status index. -/
inductive ExternalObligationStatus
  | open
  | underProof
  | proofRejected
  | proved
  deriving DecidableEq, Repr

/-- Whether an immutable obligation version is current or already superseded. -/
inductive ExternalObligationVersionDisposition
  | current
  | superseded
  deriving DecidableEq, Repr

/-- Systems whose output is evidence or proposal only. -/
inductive EvidenceOnlyProducer
  | heat
  | numerics
  | visualization
  | compactification
  | poleSurgery
  | spectralDiffusion
  | orbitConvolution
  | neuralModel
  | symbolicSearch
  | prismaticFrobenius
  | finiteEulerExperiment
  deriving DecidableEq, Repr

/-- An append-only nonauthoritative observation, bound to one obligation. -/
structure ExternalEvidenceArtifact
    {specification : ExternalObligationSpec}
    (obligation : ExternalTheoremObligation specification) where
  artifactId : ObjectAddress
  obligationDigest : Digest
  obligation_bound :
    obligationDigest = obligation.obligationDigest
  producer : EvidenceOnlyProducer
  payloadDigest : Digest
  description : String
  deriving Repr

/-- Kernel-only authority payload bound to one exact proposition. -/
structure AcceptedExternalTheoremCertificate
    {specification : ExternalObligationSpec}
    (obligation : ExternalTheoremObligation specification) where
  kernel :
    AcceptedKernelCertificate
      obligation.environment specification.statement
  obligationDigest : Digest
  obligation_bound :
    obligationDigest = obligation.obligationDigest
  statementDigest_bound :
    kernel.declaration.statementDigest =
      specification.canonicalStatementDigest
  declarationName_bound :
    kernel.declaration.declarationName =
      specification.leanDeclarationName
  dependencyConePermitted :
    ∀ dependency ∈ kernel.audit.dependencyCone.dependencies,
      dependency ∈ obligation.permittedDependencies
  prohibitedDependenciesAbsent :
    ∀ dependency ∈ obligation.prohibitedDependencies,
      dependency ∉ kernel.audit.dependencyCone.dependencies

namespace AcceptedExternalTheoremCertificate

/-- A generic accepted certificate proves its exact indexed proposition. -/
theorem provesSpecification
    {specification : ExternalObligationSpec}
    {obligation : ExternalTheoremObligation specification}
    (certificate : AcceptedExternalTheoremCertificate obligation) :
    specification.statement :=
  certificate.kernel.proves

/-- The audited declaration digest is the canonical specification digest. -/
theorem statement_digest_is_canonical
    {specification : ExternalObligationSpec}
    {obligation : ExternalTheoremObligation specification}
    (certificate : AcceptedExternalTheoremCertificate obligation) :
    certificate.kernel.declaration.statementDigest =
      specification.canonicalStatementDigest :=
  certificate.statementDigest_bound

/-- The audited declaration name is the canonical specification declaration. -/
theorem declaration_name_is_canonical
    {specification : ExternalObligationSpec}
    {obligation : ExternalTheoremObligation specification}
    (certificate : AcceptedExternalTheoremCertificate obligation) :
    certificate.kernel.declaration.declarationName =
      specification.leanDeclarationName :=
  certificate.declarationName_bound

/-- The kernel replay is inseparably indexed by the obligation environment. -/
theorem environment_digest_is_obligation_environment
    {specification : ExternalObligationSpec}
    {obligation : ExternalTheoremObligation specification}
    (certificate : AcceptedExternalTheoremCertificate obligation) :
    certificate.kernel.audit.replay.environmentDigest =
      obligation.environment.environmentDigest :=
  certificate.kernel.audit_environment_bound

/-- Certificate identity is the specification identity through its obligation index. -/
theorem obligation_id_is_specification
    {specification : ExternalObligationSpec}
    {obligation : ExternalTheoremObligation specification}
    (_certificate : AcceptedExternalTheoremCertificate obligation) :
    obligation.obligationId = specification.specificationId :=
  rfl

end AcceptedExternalTheoremCertificate

/-- Append-only data shared by every reachable status. -/
structure ExternalObligationHistory
    {specification : ExternalObligationSpec}
    (obligation : ExternalTheoremObligation specification) where
  versionDisposition : ExternalObligationVersionDisposition
  evidence : List (ExternalEvidenceArtifact obligation)
  submittedProofAttempts : List ObjectAddress
  eventChainDigest : Digest
  eventChainDigest_valid : eventChainDigest.Valid

namespace ExternalObligationHistory

/-- Current-version evidence required before entering any proof state. -/
def IsCurrent
    {specification : ExternalObligationSpec}
    {obligation : ExternalTheoremObligation specification}
    (history : ExternalObligationHistory obligation) : Prop :=
  history.versionDisposition = .current

/-- A superseded version cannot satisfy proof-state admission. -/
theorem superseded_not_current
    {specification : ExternalObligationSpec}
    {obligation : ExternalTheoremObligation specification}
    (history : ExternalObligationHistory obligation)
    (superseded : history.versionDisposition = .superseded) :
    ¬ history.IsCurrent := by
  simp [IsCurrent, superseded]

/-- Current-version evidence excludes the superseded disposition. -/
theorem current_not_superseded
    {specification : ExternalObligationSpec}
    {obligation : ExternalTheoremObligation specification}
    {history : ExternalObligationHistory obligation}
    (current : history.IsCurrent) :
    history.versionDisposition ≠ .superseded := by
  intro superseded
  rw [IsCurrent, superseded] at current
  contradiction

end ExternalObligationHistory

/--
Only transition constructors can produce a state.  In particular, a `proved`
state necessarily contains the certificate for the exact specification.
-/
inductive ExternalObligationState
    {specification : ExternalObligationSpec}
    (obligation : ExternalTheoremObligation specification) :
    ExternalObligationStatus → Type
  | open (history : ExternalObligationHistory obligation) :
      ExternalObligationState obligation .open
  | underProof
      (history : ExternalObligationHistory obligation)
      (versionCurrent : history.IsCurrent) :
      ExternalObligationState obligation .underProof
  | proofRejected
      (history : ExternalObligationHistory obligation)
      (versionCurrent : history.IsCurrent) :
      ExternalObligationState obligation .proofRejected
  | proved
      (history : ExternalObligationHistory obligation)
      (versionCurrent : history.IsCurrent)
      (certificate : AcceptedExternalTheoremCertificate obligation) :
      ExternalObligationState obligation .proved

namespace ExternalObligationState

def history
    {specification : ExternalObligationSpec}
    {obligation : ExternalTheoremObligation specification}
    {status : ExternalObligationStatus} :
    ExternalObligationState obligation status →
      ExternalObligationHistory obligation
  | .open history
  | .underProof history _
  | .proofRejected history _
  | .proved history _ _ => history

def beginProof
    {specification : ExternalObligationSpec}
    {obligation : ExternalTheoremObligation specification}
    (state : ExternalObligationState obligation .open)
    (versionCurrent : state.history.IsCurrent) :
    ExternalObligationState obligation .underProof :=
  .underProof state.history versionCurrent

def retryProof
    {specification : ExternalObligationSpec}
    {obligation : ExternalTheoremObligation specification}
    (state : ExternalObligationState obligation .proofRejected) :
    ExternalObligationState obligation .underProof :=
  match state with
  | .proofRejected history versionCurrent =>
      .underProof history versionCurrent

def rejectProof
    {specification : ExternalObligationSpec}
    {obligation : ExternalTheoremObligation specification}
    (state : ExternalObligationState obligation .underProof) :
    ExternalObligationState obligation .proofRejected :=
  match state with
  | .underProof history versionCurrent =>
      .proofRejected history versionCurrent

def certify
    {specification : ExternalObligationSpec}
    {obligation : ExternalTheoremObligation specification}
    (state : ExternalObligationState obligation .underProof)
    (certificate : AcceptedExternalTheoremCertificate obligation) :
    ExternalObligationState obligation .proved :=
  match state with
  | .underProof history versionCurrent =>
      .proved history versionCurrent certificate

/-- Every under-proof state is tied to a current immutable version. -/
theorem underProof_version_current
    {specification : ExternalObligationSpec}
    {obligation : ExternalTheoremObligation specification}
    (state : ExternalObligationState obligation .underProof) :
    state.history.IsCurrent := by
  cases state with
  | underProof _ versionCurrent => exact versionCurrent

/-- Every rejected proof attempt remains tied to a current version. -/
theorem proofRejected_version_current
    {specification : ExternalObligationSpec}
    {obligation : ExternalTheoremObligation specification}
    (state : ExternalObligationState obligation .proofRejected) :
    state.history.IsCurrent := by
  cases state with
  | proofRejected _ versionCurrent => exact versionCurrent

/-- Every proved state carries current-version evidence. -/
theorem proved_version_current
    {specification : ExternalObligationSpec}
    {obligation : ExternalTheoremObligation specification}
    (state : ExternalObligationState obligation .proved) :
    state.history.IsCurrent := by
  cases state with
  | proved _ versionCurrent _ => exact versionCurrent

/-- Mutation exclusion: a superseded version cannot be under proof. -/
theorem underProof_version_not_superseded
    {specification : ExternalObligationSpec}
    {obligation : ExternalTheoremObligation specification}
    (state : ExternalObligationState obligation .underProof) :
    state.history.versionDisposition ≠ .superseded :=
  ExternalObligationHistory.current_not_superseded
    (underProof_version_current state)

/-- Mutation exclusion: a superseded version cannot be rejected as current work. -/
theorem proofRejected_version_not_superseded
    {specification : ExternalObligationSpec}
    {obligation : ExternalTheoremObligation specification}
    (state : ExternalObligationState obligation .proofRejected) :
    state.history.versionDisposition ≠ .superseded :=
  ExternalObligationHistory.current_not_superseded
    (proofRejected_version_current state)

/-- Mutation exclusion: a superseded version cannot be proved. -/
theorem proved_version_not_superseded
    {specification : ExternalObligationSpec}
    {obligation : ExternalTheoremObligation specification}
    (state : ExternalObligationState obligation .proved) :
    state.history.versionDisposition ≠ .superseded :=
  ExternalObligationHistory.current_not_superseded
    (proved_version_current state)

/-- A proved state eliminates only to the exact specification proposition. -/
theorem proved_implies_specification
    {specification : ExternalObligationSpec}
    {obligation : ExternalTheoremObligation specification}
    (state : ExternalObligationState obligation .proved) :
    specification.statement := by
  cases state with
  | proved _ _ certificate =>
      exact certificate.provesSpecification

/-- Evidence cannot change the status index or manufacture a certificate. -/
def attachEvidence
    {specification : ExternalObligationSpec}
    {obligation : ExternalTheoremObligation specification}
    {status : ExternalObligationStatus}
    (state : ExternalObligationState obligation status)
    (artifact : ExternalEvidenceArtifact obligation)
    (nextEventChainDigest : Digest)
    (nextEventChainDigest_valid : nextEventChainDigest.Valid) :
    ExternalObligationState obligation status :=
  let appendTo
      (history : ExternalObligationHistory obligation) :
      ExternalObligationHistory obligation := {
        versionDisposition := history.versionDisposition
        evidence := history.evidence ++ [artifact]
        submittedProofAttempts := history.submittedProofAttempts
        eventChainDigest := nextEventChainDigest
        eventChainDigest_valid := nextEventChainDigest_valid
      }
  match state with
  | .open history => .open (appendTo history)
  | .underProof history versionCurrent =>
      .underProof (appendTo history) versionCurrent
  | .proofRejected history versionCurrent =>
      .proofRejected (appendTo history) versionCurrent
  | .proved history versionCurrent certificate =>
      .proved (appendTo history) versionCurrent certificate

/-- Evidence attachment preserves the immutable version disposition exactly. -/
theorem attachEvidence_preserves_version_disposition
    {specification : ExternalObligationSpec}
    {obligation : ExternalTheoremObligation specification}
    {status : ExternalObligationStatus}
    (state : ExternalObligationState obligation status)
    (artifact : ExternalEvidenceArtifact obligation)
    (nextEventChainDigest : Digest)
    (nextEventChainDigest_valid : nextEventChainDigest.Valid) :
    (attachEvidence state artifact nextEventChainDigest
      nextEventChainDigest_valid).history.versionDisposition =
        state.history.versionDisposition := by
  cases state <;> rfl

end ExternalObligationState

/--
Changing statement metadata, dependency profile, or environment creates a new
version with an explicit parent.  The previous obligation is not rewritten.
-/
structure ExternalObligationSupersession
    {specification : ExternalObligationSpec}
    (previous next : ExternalTheoremObligation specification) : Prop where
  version_increases :
    previous.version < next.version
  parent_bound :
    next.parentDigest = some previous.obligationDigest
  identity_changes :
    next.obligationDigest ≠ previous.obligationDigest

end Mathematics.Prismatic
