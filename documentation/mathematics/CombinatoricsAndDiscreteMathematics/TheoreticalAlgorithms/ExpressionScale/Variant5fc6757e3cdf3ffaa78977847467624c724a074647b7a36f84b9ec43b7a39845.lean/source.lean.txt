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
