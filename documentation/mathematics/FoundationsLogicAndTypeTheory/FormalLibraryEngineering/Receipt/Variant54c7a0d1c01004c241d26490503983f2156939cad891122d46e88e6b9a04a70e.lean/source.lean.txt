-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransactionStatus.Variantc7435e134600b2056846ccf870f5af6fcbe4917cc446302423e5a6ea31201e31","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c7435e134600b2056846ccf870f5af6fcbe4917cc446302423e5a6ea31201e31","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TransactionStatus.Variantc7435e134600b2056846ccf870f5af6fcbe4917cc446302423e5a6ea31201e31","mathematical_subject":"Foundations.Unclassified","original_sha256":"c7435e134600b2056846ccf870f5af6fcbe4917cc446302423e5a6ea31201e31","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Refactor/Receipt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Refactor.Plan

/-! # Transaction and acceptance receipts -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransactionStatus.Variantc7435e134600b2056846ccf870f5af6fcbe4917cc446302423e5a6ea31201e31

namespace Mathematics.Refactor

open Mathematics

inductive TransactionStatus
  | planned
  | staged
  | applied
  | rolledBack
  | accepted
  | rejected
  deriving DecidableEq, Repr, Inhabited

structure Receipt where
  transactionId : RefactorTransactionId
  status : TransactionStatus
  baselineDigest : Digest
  sourceAnalysisDigest : Digest
  millingProfileDigest : Digest
  partitionProfileDigest : Digest
  planDigest : Digest
  stagedEnvironmentDigest : Digest
  appliedEnvironmentDigest : Digest
  milledUnitCount : Nat
  movedUnitCount : Nat
  unchangedUnitCount : Nat
  blockedUnitCount : Nat
  publicStatementChanges : Nat
  trustClosureChanges : Nat
  cleanBuild : Bool
  freshKernelCheck : Bool
  fullAssurance : Bool
  idempotent : Bool
  rollbackReceipt : String
  deriving DecidableEq, Repr

end Mathematics.Refactor
