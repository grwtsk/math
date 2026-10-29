-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AttentionAxis.Variant3160df186b9835f2c583f482efe8ad7b0f3130612671463aa96a991fa6522c33","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3160df186b9835f2c583f482efe8ad7b0f3130612671463aa96a991fa6522c33","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.AttentionAxis.Variant3160df186b9835f2c583f482efe8ad7b0f3130612671463aa96a991fa6522c33","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"3160df186b9835f2c583f482efe8ad7b0f3130612671463aa96a991fa6522c33","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Attention/Axis.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Fin.Basic

/-!
# Biaxial attention axes

Token transport and depth retrieval are independent coordinates of one finite
semantic realization.  Their names are protected from quantities that may
look numerically similar but have different mathematical authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AttentionAxis.Variant3160df186b9835f2c583f482efe8ad7b0f3130612671463aa96a991fa6522c33

namespace Mathematics.Attention

inductive AttentionAxis
  | sequence
  | depth
  deriving DecidableEq, Repr

structure BiaxialIndex (depthCount tokenCount : Nat) where
  depth : Fin depthCount
  token : Fin tokenCount
  deriving DecidableEq, Repr

inductive AttentionQuantityKind
  | dataAttention
  | depthAttention
  | numericalResidualError
  | authorityWeight
  | kdaRetention
  | abelParameter
  | attentionResidualWeight
  | reynoldsCharacterWeight
  | kdaRecurrentState
  | mpsVirtualBond
  | blockAggregation
  | certifiedCondensation
  | internalModelAttention
  | reproductiveContextProof
  deriving DecidableEq, Repr

theorem data_attention_ne_depth_attention :
    AttentionQuantityKind.dataAttention ≠
      AttentionQuantityKind.depthAttention := by
  decide

theorem attention_weight_ne_authority_weight :
    AttentionQuantityKind.depthAttention ≠
      AttentionQuantityKind.authorityWeight := by
  decide

theorem kda_retention_ne_abel_parameter :
    AttentionQuantityKind.kdaRetention ≠
      AttentionQuantityKind.abelParameter := by
  decide

theorem attention_residual_ne_reynolds_weight :
    AttentionQuantityKind.attentionResidualWeight ≠
      AttentionQuantityKind.reynoldsCharacterWeight := by
  decide

theorem recurrent_state_ne_mps_bond :
    AttentionQuantityKind.kdaRecurrentState ≠
      AttentionQuantityKind.mpsVirtualBond := by
  decide

theorem aggregation_ne_certified_condensation :
    AttentionQuantityKind.blockAggregation ≠
      AttentionQuantityKind.certifiedCondensation := by
  decide

theorem internal_attention_ne_reproductive_proof :
    AttentionQuantityKind.internalModelAttention ≠
      AttentionQuantityKind.reproductiveContextProof := by
  decide

end Mathematics.Attention
