import Mathlib.Data.Fin.Basic

/-!
# Biaxial attention axes

Token transport and depth retrieval are independent coordinates of one finite
semantic realization.  Their names are protected from quantities that may
look numerically similar but have different mathematical authority.
-/

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
