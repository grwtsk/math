# Rational Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69691251c2122217ea561d8c26bcae84d4f93708` · SHA-256 `618050a14f427c7d8c22c20b648ac38a598e4f9ece862a88cf0c0b3b4c6d458f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.RationalMatrixCode.Variant9fde4bdb8b6205742216a2e17e77f16c26154bef04eae6ed2dc0c6549fe99be8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9fde4bdb8b6205742216a2e17e77f16c26154bef04eae6ed2dc0c6549fe99be8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RationalMatrixCode.Variant9fde4bdb8b6205742216a2e17e77f16c26154bef04eae6ed2dc0c6549fe99be8","mathematical_subject":"Foundations.Unclassified","original_sha256":"9fde4bdb8b6205742216a2e17e77f16c26154bef04eae6ed2dc0c6549fe99be8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Rational.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.NumberSystems


namespace GRWTSK.Algebra.LinearAlgebra.RationalMatrixCode.Variant9fde4bdb8b6205742216a2e17e77f16c26154bef04eae6ed2dc0c6549fe99be8

namespace Surface.Legacy

structure RationalMatrixCode where
  numerator : Int
  denominator : Nat
  denominatorPositive : 0 < denominator
  matrix : BinaryLogicMatrix 1 1

def encodeRational (q : RationalMatrixCode) : RationalMatrixCode :=
  q

def decodeRational? (code : RationalMatrixCode) : Option RationalMatrixCode :=
  some code

theorem rational_blm_roundTrip (q : RationalMatrixCode) :
    decodeRational? (encodeRational q) = some q := by
  rfl

structure RationalNormalizationCertificate where
  code : RationalMatrixCode
  normalized : Prop
  claimBoundary : String

theorem rational_normalization_certificate_projects
    (C : RationalNormalizationCertificate) :
    C.normalized -> C.normalized := by
  intro h
  exact h

end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=481b824a6a78af4cf1338fa84b935220cd916955e16ee9a4e7c29b8ec474e78d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Rational/Variant6a08242e9d562ffedb07d01c9da2adbbbfbfd534a1de2183514ba6783820a52e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
