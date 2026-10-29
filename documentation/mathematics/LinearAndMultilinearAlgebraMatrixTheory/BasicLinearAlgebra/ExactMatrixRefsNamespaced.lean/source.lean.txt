-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.PSDDecompositionKind.Variant8855f6f2e1db14cec59ce2eeed8c0a99d1ecf6c002f1b83c6b7d0522749fa0df","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8855f6f2e1db14cec59ce2eeed8c0a99d1ecf6c002f1b83c6b7d0522749fa0df","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PSDDecompositionKind.Variant8855f6f2e1db14cec59ce2eeed8c0a99d1ecf6c002f1b83c6b7d0522749fa0df","mathematical_subject":"Foundations.Unclassified","original_sha256":"8855f6f2e1db14cec59ce2eeed8c0a99d1ecf6c002f1b83c6b7d0522749fa0df","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP0/ExactMatrixRefs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.WP0.Identifiers

/-!
# Exact matrix custody references

These records identify exact finite matrices and positivity-checking receipts.
They do not themselves prove positivity.
-/


namespace GRWTSK.Algebra.LinearAlgebra.PSDDecompositionKind.Variant8855f6f2e1db14cec59ce2eeed8c0a99d1ecf6c002f1b83c6b7d0522749fa0df

namespace Mathematics.SemiLocalDefect.SoninCore

inductive PSDDecompositionKind
  | exactCholesky
  | exactLDL
  | matrixSOS
  | stieltjesRepresentation
  | intervalLDL
  | principalMinors
deriving DecidableEq, Repr

structure ExactCoefficientRingRef where
  id : CoefficientRingId
  name : String
  revision : Nat
  digest : Digest
deriving DecidableEq, Repr

structure ExactMatrixRef where
  id : MatrixId
  coefficientRing : CoefficientRingId
  rows : Nat
  cols : Nat
  basisRevision : BasisRevision
  digest : Digest
deriving DecidableEq, Repr

structure ExactPSDCompressionRef where
  matrix : ExactMatrixRef
  factor : Option ExactMatrixRef
  mechanism : PSDDecompositionKind
  proofRef : ProofId
  checkerRef : CheckerId
  checkerRevision : Nat
deriving Repr

end Mathematics.SemiLocalDefect.SoninCore
