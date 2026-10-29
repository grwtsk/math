# Convex Wolff Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e0759c7fbbab73694bd1274aec1f3ca8bda5d397` · SHA-256 `9e3459fa0bd10060ee3f585ea24b2a40235244390a624583454326f266676712`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConvexWolffFactorization.Variant7ab9a5e084a95270f8fdedb675b50f7de7b9bc357410df24510757152fc91ca8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7ab9a5e084a95270f8fdedb675b50f7de7b9bc357410df24510757152fc91ca8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ConvexWolffFactorization.Variant7ab9a5e084a95270f8fdedb675b50f7de7b9bc357410df24510757152fc91ca8","mathematical_subject":"Computation.DataStructures","original_sha256":"7ab9a5e084a95270f8fdedb675b50f7de7b9bc357410df24510757152fc91ca8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Geometry/Kakeya/ConvexWolff.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Geometry.Kakeya.WolffAxioms


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConvexWolffFactorization.Variant7ab9a5e084a95270f8fdedb675b50f7de7b9bc357410df24510757152fc91ca8

namespace Surface.Geometry.Kakeya

/-!
What is formalized:
Convex Wolff factorization as a theorem-input record.

What is certificate-gated:
The factorization statement is a Prop-valued input and requires Wolff
conditions.

What is not claimed:
No convex Wolff factorization theorem is proved here.
-/

/-- Convex Wolff factorization theorem input. -/
structure ConvexWolffFactorization
    (K : TubeConfiguration) where
  wolffAxioms : WolffAxioms K
  factorization : Prop
  factorizationCertified : factorization
  boundary : List String

def ConvexWolffFactorization.usableForMajorProof
    {K : TubeConfiguration}
    (F : ConvexWolffFactorization K) :
    Prop :=
  F.wolffAxioms.usableForMajorProof ∧ F.factorization

theorem ConvexWolffFactorization.usableForMajorProof_of_fields
    {K : TubeConfiguration}
    (F : ConvexWolffFactorization K) :
    F.usableForMajorProof :=
  ⟨F.wolffAxioms.usableForMajorProof_of_fields, F.factorizationCertified⟩

end Surface.Geometry.Kakeya
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=024d2d472d74a75419ee7bba094674f4d53b7406a01b1c13bf295e75a0501eb8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConvexWolff/Variant26e3ec72cf812f039a6a61f7e1dc54bcffd1343a0f68333d7edb5318e084608f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
