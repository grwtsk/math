# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExpressionScale.Variant5fc6757e3cdf3ffaa78977847467624c724a074647b7a36f84b9ec43b7a39845

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27b966c1f73d159e7169de76950b85a41a830ea7` · SHA-256 `1cc7a364be8ceab5ae5d5996d4582cf3885a36031e83d624d7ddaf7f182cccc2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExpressionScale.Variant879ac8ba87544e950965d924139cfe6f3a2185434d7fd8231251257bbb1c0f9d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"879ac8ba87544e950965d924139cfe6f3a2185434d7fd8231251257bbb1c0f9d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ExpressionScale.Variant879ac8ba87544e950965d924139cfe6f3a2185434d7fd8231251257bbb1c0f9d","mathematical_subject":"Computation.DataStructures","original_sha256":"879ac8ba87544e950965d924139cfe6f3a2185434d7fd8231251257bbb1c0f9d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Oracle/ExpressionScale.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.SemanticIdentity

/-!
# Local, global, and universal expression

Scale records the intended domain of an expression.  A universal statement
must retain its local realization map; universality is not homogenization.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExpressionScale.Variant879ac8ba87544e950965d924139cfe6f3a2185434d7fd8231251257bbb1c0f9d

namespace Mathematics.Oracle

inductive ExpressionScale
  | local (projectId : ProjectId)
  | global
  | universal
  deriving DecidableEq, Repr

structure ScaledExpression where
  expressionId : StableId
  pointIds : List ElementId
  scale : ExpressionScale
  localRealizationIds : List StableId
  scopeDigest : Digest
  expressionDigest : Digest
  deriving DecidableEq, Repr

def ScaledExpression.UniversalWithLocalRealizations
    (expression : ScaledExpression) : Prop :=
  expression.scale = .universal ∧
  expression.localRealizationIds ≠ []

/-- Universal expression does not erase its target-native realizations. -/
theorem ScaledExpression.universal_retains_local
    {expression : ScaledExpression}
    (universal : expression.UniversalWithLocalRealizations) :
    expression.localRealizationIds ≠ [] :=
  universal.2

end Mathematics.Oracle
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=816cf973d864f7e584f4712f2490c4d3d65cfeb4b0d4d0ba78d2683b2a7f4b78 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExpressionScale/Variant5fc6757e3cdf3ffaa78977847467624c724a074647b7a36f84b9ec43b7a39845.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
