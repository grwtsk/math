-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Core.Variantf77e309736b8279d16b6a74ac4a110b566d0a284a316957b6e92c62345ab6c01","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f77e309736b8279d16b6a74ac4a110b566d0a284a316957b6e92c62345ab6c01","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Core.Variantf77e309736b8279d16b6a74ac4a110b566d0a284a316957b6e92c62345ab6c01","mathematical_subject":"Foundations.Unclassified","original_sha256":"f77e309736b8279d16b6a74ac4a110b566d0a284a316957b6e92c62345ab6c01","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Determinant.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.PerfectComplex.Core
import DAF.PerfectComplex.Comparison
import DAF.Determinant.Core
import DAF.Determinant.Transport
import DAF.Determinant.ScalarExtension

/-!
# Perfect-complex determinant transport

This declaration-free umbrella exposes determinant-line transport only for a
selected perfect-complex model and certified chain-level quasi-isomorphisms.
A state equivalence does not automatically induce a chain equivalence, and
determinant transport therefore cannot be manufactured from a state map.

A determinant-line statement is also not a same-degree group isomorphism.
Scalar extension changes both the coefficient context and the target
determinant theory; comparison with an integral line requires separately
supplied compatibility data.
-/

namespace GRWTSK.Algebra.LinearAlgebra.Core.Variantf77e309736b8279d16b6a74ac4a110b566d0a284a316957b6e92c62345ab6c01

