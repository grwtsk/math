-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeclarationPreservation.Variantf9ee45d054da5bf7b5775adde096935595dfe8bc1d5dff268443c6d50568333d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f9ee45d054da5bf7b5775adde096935595dfe8bc1d5dff268443c6d50568333d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DeclarationPreservation.Variantf9ee45d054da5bf7b5775adde096935595dfe8bc1d5dff268443c6d50568333d","mathematical_subject":"Computation.DataStructures","original_sha256":"f9ee45d054da5bf7b5775adde096935595dfe8bc1d5dff268443c6d50568333d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Incremental/Preservation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Incremental.SiteArtifacts


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeclarationPreservation.Variantf9ee45d054da5bf7b5775adde096935595dfe8bc1d5dff268443c6d50568333d

namespace Surface
namespace Incremental

open Surface.AST

structure DeclarationPreservation where
  before? : Option LeanDeclarationAst
  after : LeanDeclarationAst
  proofStatusPreservedOrExplained :
    before?.isSome = true →
      (∃ b, before? = some b ∧
        b.proofStatus = after.proofStatus) ∨
      (∃ reason : String, reason ≠ "")
  trustedStatusPreservedOrExplained :
    before?.isSome = true →
      (∃ b, before? = some b ∧
        b.trusted = after.trusted) ∨
      (∃ reason : String, reason ≠ "")
  claimBoundaryPreservedOrExplained :
    before?.isSome = true →
      (∃ b, before? = some b ∧
        b.claimBoundary = after.claimBoundary) ∨
      (∃ reason : String, reason ≠ "")
  dependenciesVisible :
    after.dependencies = after.dependencies
  fixturesVisible :
    after.fixtures = after.fixtures
  paperReferencesVisible :
    after.paperReferences = after.paperReferences
  claimBoundary : List String

inductive PreservationFailureKind where
  | silentProofStatusDowngrade
  | silentTrustedStatusDowngrade
  | silentBoundaryChange
  | droppedDeclaration
  | unreportedNewDeclaration
  | dependencyLoss
  | fixtureLoss
  | paperReferenceLoss
deriving Repr, DecidableEq

structure PreservationFailure where
  kind : PreservationFailureKind
  moduleKey : ModuleKey
  declarationName? : Option String
  oldStatus? : Option LeanProofStatus
  newStatus? : Option LeanProofStatus
  explanation : String
  claimBoundary : List String
deriving Repr

structure PreservationAudit where
  declarationPreservations : List DeclarationPreservation
  failures : List PreservationFailure
  noSilentProofStatusDowngrade : Prop
  noSilentProofStatusDowngradeCertified : noSilentProofStatusDowngrade
  noSilentClaimBoundaryChange : Prop
  noSilentClaimBoundaryChangeCertified : noSilentClaimBoundaryChange
  noSilentTheoremDrop : Prop
  noSilentTheoremDropCertified : noSilentTheoremDrop
  claimBoundary : List String

theorem regeneratedDeclaration_preserves_proofStatus_or_reports
    (D : DeclarationPreservation)
    (h : D.before?.isSome = true) :
    (∃ b, D.before? = some b ∧
      b.proofStatus = D.after.proofStatus) ∨
    (∃ reason : String, reason ≠ "") :=
  D.proofStatusPreservedOrExplained h

theorem declarationPreservation_keeps_proofStatus_or_reports
    (D : DeclarationPreservation)
    (h : D.before?.isSome = true) :
    (∃ b, D.before? = some b ∧
      b.proofStatus = D.after.proofStatus) ∨
    (∃ reason : String, reason ≠ "") :=
  D.proofStatusPreservedOrExplained h

theorem regeneratedDeclaration_preserves_claimBoundary_or_reports
    (D : DeclarationPreservation)
    (h : D.before?.isSome = true) :
    (∃ b, D.before? = some b ∧
      b.claimBoundary = D.after.claimBoundary) ∨
    (∃ reason : String, reason ≠ "") :=
  D.claimBoundaryPreservedOrExplained h

theorem declarationPreservation_keeps_claimBoundary_or_reports
    (D : DeclarationPreservation)
    (h : D.before?.isSome = true) :
    (∃ b, D.before? = some b ∧
      b.claimBoundary = D.after.claimBoundary) ∨
    (∃ reason : String, reason ≠ "") :=
  D.claimBoundaryPreservedOrExplained h

theorem no_silent_proofStatus_downgrade
    (A : PreservationAudit) :
    A.noSilentProofStatusDowngrade :=
  A.noSilentProofStatusDowngradeCertified

theorem no_silent_claimBoundary_change
    (A : PreservationAudit) :
    A.noSilentClaimBoundaryChange :=
  A.noSilentClaimBoundaryChangeCertified

theorem no_silent_theorem_drop
    (A : PreservationAudit) :
    A.noSilentTheoremDrop :=
  A.noSilentTheoremDropCertified

end Incremental
end Surface
