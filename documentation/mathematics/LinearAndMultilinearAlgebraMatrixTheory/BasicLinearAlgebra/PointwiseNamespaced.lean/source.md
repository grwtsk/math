# Pointwise Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dde90938e7d0f976bdb688b8ed74decc02978b05` · SHA-256 `756f66294afe7151bd6d69fcde6ee97aae6c573681c73a829383717861f20aac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Map.Variant9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Map.Variant9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BooleanMatrix/Matrix/Pointwise.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BooleanMatrix.Matrix.Core

/-!
# Pointwise BooleanMatrix operations
-/


namespace GRWTSK.Algebra.LinearAlgebra.Map.Variant9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba

namespace BooleanMatrix
namespace Matrix

/-- Apply a Boolean function independently to every entry. -/
def map
    (function : Bool → Bool)
    (matrix : Matrix) :
    Matrix :=
  fun row column => function (matrix row column)

@[simp]
theorem map_apply
    (function : Bool → Bool)
    (matrix : Matrix)
    (row column : Nat) :
    map function matrix row column =
      function (matrix row column) :=
  rfl

/-- Combine two matrices entry by entry. -/
def zipWith
    (function : Bool → Bool → Bool)
    (left right : Matrix) :
    Matrix :=
  fun row column =>
    function (left row column) (right row column)

@[simp]
theorem zipWith_apply
    (function : Bool → Bool → Bool)
    (left right : Matrix)
    (row column : Nat) :
    zipWith function left right row column =
      function (left row column) (right row column) :=
  rfl

/-- Pointwise Boolean negation. -/
def not (matrix : Matrix) : Matrix :=
  map (fun bit => !bit) matrix

/-- Pointwise Boolean exclusive-or. -/
def xor (left right : Matrix) : Matrix :=
  zipWith (fun a b => a != b) left right

end Matrix
end BooleanMatrix
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ac3f37e31d988aae98c00bf69138ff5fc421ca1858b48d752f37f6061d395582 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Pointwise/Variant0a518721d437822dbd5ecb097eec6b37bdcd2b5cdf6a591eea96883583951a4b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
