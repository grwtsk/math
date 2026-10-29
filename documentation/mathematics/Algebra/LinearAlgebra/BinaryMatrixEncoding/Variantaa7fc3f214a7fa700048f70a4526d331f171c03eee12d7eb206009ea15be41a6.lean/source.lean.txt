-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.UnaryBinaryMatrixShape.Variant083d09b1cd58a9ea645591074d37e45bb3da03d6a45e0cfde0e3ec4b67c81afc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"083d09b1cd58a9ea645591074d37e45bb3da03d6a45e0cfde0e3ec4b67c81afc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.UnaryBinaryMatrixShape.Variant083d09b1cd58a9ea645591074d37e45bb3da03d6a45e0cfde0e3ec4b67c81afc","mathematical_subject":"Foundations.Unclassified","original_sha256":"083d09b1cd58a9ea645591074d37e45bb3da03d6a45e0cfde0e3ec4b67c81afc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CellularArithmetic/BinaryMatrixEncoding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CellularArithmetic.BinaryMatrixEncoding

/-!
# Folder.Theorem.CellularArithmetic.BinaryMatrixEncoding

Radiation role: theorem-wrapper
BinaryMatrix spine: This module participates in the finite carrier, cellular, spectral, torsion, or proof layer radiating from the BinaryMatrix spine.
Ontology: proof.cellular_arithmetic.binary_matrix_encoding
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace GRWTSK.Algebra.LinearAlgebra.UnaryBinaryMatrixShape.Variant083d09b1cd58a9ea645591074d37e45bb3da03d6a45e0cfde0e3ec4b67c81afc

namespace Folder
namespace Theorem
namespace CellularArithmetic

theorem unaryBinaryMatrix_shape
    (n : Folder.NumberTheory.PositiveNat) :
    (Folder.CellularArithmetic.unaryBinaryMatrixOfNat n).m = 1 ∧
    (Folder.CellularArithmetic.unaryBinaryMatrixOfNat n).n = n.val :=
  Folder.CellularArithmetic.unaryBinaryMatrix_shape n

end CellularArithmetic
end Theorem
end Folder
