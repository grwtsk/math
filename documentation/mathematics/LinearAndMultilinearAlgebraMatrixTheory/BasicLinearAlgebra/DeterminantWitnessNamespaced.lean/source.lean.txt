-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.DeterminantWitness.Variant1e40811b31cdcf93322d2a045fae1eac90fb7f2397c40a87f14bbaf80b9daade","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1e40811b31cdcf93322d2a045fae1eac90fb7f2397c40a87f14bbaf80b9daade","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.DeterminantWitness.Variant1e40811b31cdcf93322d2a045fae1eac90fb7f2397c40a87f14bbaf80b9daade","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"1e40811b31cdcf93322d2a045fae1eac90fb7f2397c40a87f14bbaf80b9daade","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Linear/DeterminantWitness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Linear.Matrix

/-!
# Folder.Linear.DeterminantWitness

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: linear.determinant_witness
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/



namespace GRWTSK.Algebra.LinearAlgebra.DeterminantWitness.Variant1e40811b31cdcf93322d2a045fae1eac90fb7f2397c40a87f14bbaf80b9daade

namespace Folder
namespace Linear

structure DeterminantWitness
    {n : Nat}
    {α : Type _}
    [CommRing α]
    (A : Matrix n n α) where
  detValue : α
  certified : detValue = _root_.Matrix.det A

theorem determinant_witness_correct
    {n : Nat}
    {α : Type _}
    [CommRing α]
    {A : Matrix n n α}
    (W : DeterminantWitness A) :
    W.detValue = _root_.Matrix.det A :=
  W.certified

end Linear
end Folder
