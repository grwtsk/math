# Format Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `50a1541e30dbc6e269582d19fa9588a09f9f401a` · SHA-256 `685da303fa028255aaa804cde3e4270d3dcf5ed217fcc54e7c746ce17e010be6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Format.Variantb3c2ae23632c55ad930ddfd1f953f19805ab8e48490aab2b68146e914c0750c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b3c2ae23632c55ad930ddfd1f953f19805ab8e48490aab2b68146e914c0750c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Format.Variantb3c2ae23632c55ad930ddfd1f953f19805ab8e48490aab2b68146e914c0750c9","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"b3c2ae23632c55ad930ddfd1f953f19805ab8e48490aab2b68146e914c0750c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BooleanMatrix/Format.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BooleanMatrix.Matrix.Core

/-!
# BooleanMatrix formats

A format is a validity predicate over the common BooleanMatrix carrier.
-/


namespace GRWTSK.Algebra.LinearAlgebra.Format.Variantb3c2ae23632c55ad930ddfd1f953f19805ab8e48490aab2b68146e914c0750c9

namespace BooleanMatrix

/--
A format identifies the matrices considered valid under one interpretation.
-/
structure Format where
  Valid : Matrix → Prop

namespace Format

/-- The unrestricted format accepts every matrix. -/
def any : Format where
  Valid := fun _ => True

/-- A format containing exactly one matrix. -/
def exact (expected : Matrix) : Format where
  Valid := fun matrix => matrix = expected

/-- Conjunction of two matrix formats. -/
def intersection
    (left right : Format) :
    Format where
  Valid := fun matrix =>
    left.Valid matrix ∧ right.Valid matrix

end Format
end BooleanMatrix
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1dcb6c28d7f538421eb58355bf184e70ac561690142770823f2b0b7c6bece07e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Format/Variantd130bbb79fa0c7faa714fe98822579d10f278d1c5070c17e54fea7e3fdfea98a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
