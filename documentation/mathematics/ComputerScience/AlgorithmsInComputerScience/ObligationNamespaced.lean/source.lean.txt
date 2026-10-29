-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProofObligationKind.Variant294f785fc71aeeb77506c4779d117d75ee04349dbfa360db5bd1f30e2594906c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"294f785fc71aeeb77506c4779d117d75ee04349dbfa360db5bd1f30e2594906c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ProofObligationKind.Variant294f785fc71aeeb77506c4779d117d75ee04349dbfa360db5bd1f30e2594906c","mathematical_subject":"Computation.DataStructures","original_sha256":"294f785fc71aeeb77506c4779d117d75ee04349dbfa360db5bd1f30e2594906c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ingestion/Obligation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ingestion.Environment

/-! # Explicit proof-gap obligations -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProofObligationKind.Variant294f785fc71aeeb77506c4779d117d75ee04349dbfa360db5bd1f30e2594906c

namespace Mathematics.Ingestion

inductive ProofObligationKind
  | pedagogicalExercise
  | unfinishedProof
  | externalTheorem
  | unsafeDependency
  | unknownAuthority
  deriving DecidableEq, Repr

inductive ProofObligationStatus
  | open
  | underProof
  | rejected
  | kernelDischarged
  deriving DecidableEq, Repr

/-- Every extracted `sorry` dependency becomes a named, non-theorem obligation. -/
structure ProofObligation where
  obligationId : StableId
  declarationId : Extractor.DeclarationId
  assumption : Extractor.TrustAssumption
  isSorry :
    assumption.kind = .sorryDerivedDeclaration
  kind : ProofObligationKind
  status : ProofObligationStatus
  sourceArtifactIds : List Ecosystem.ArtifactId
  obligationDigest : Digest
  deriving Repr

end Mathematics.Ingestion
