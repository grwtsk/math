-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ProofAdapterDescriptor.Variant0c4516d89d190a0c0ffec166c0434cdbf96898b95209145cca68821415a9fdab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0c4516d89d190a0c0ffec166c0434cdbf96898b95209145cca68821415a9fdab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ProofAdapterDescriptor.Variant0c4516d89d190a0c0ffec166c0434cdbf96898b95209145cca68821415a9fdab","mathematical_subject":"Foundations.Unclassified","original_sha256":"0c4516d89d190a0c0ffec166c0434cdbf96898b95209145cca68821415a9fdab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/ProofAdapter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.ProofSyntax
import Surface.Legacy.BinaryLogicMatrix.TheoremAdapter


namespace GRWTSK.Algebra.LinearAlgebra.ProofAdapterDescriptor.Variant0c4516d89d190a0c0ffec166c0434cdbf96898b95209145cca68821415a9fdab

namespace Surface.Legacy

structure ProofAdapterDescriptor where
  term : ProofTerm
  theoremDescriptor : EncodedTheorem
  syntaxRoundTrip : Prop
  proofAuthorityBoundary : String

theorem proofAdapter_syntax_roundTrip_projects
    (A : ProofAdapterDescriptor) :
    A.syntaxRoundTrip -> A.syntaxRoundTrip := by
  intro h
  exact h

theorem proofAdapter_preserves_theorem_statement
    (A : ProofAdapterDescriptor) :
    A.theoremDescriptor.statement :=
  A.theoremDescriptor.soundProof

end Surface.Legacy
