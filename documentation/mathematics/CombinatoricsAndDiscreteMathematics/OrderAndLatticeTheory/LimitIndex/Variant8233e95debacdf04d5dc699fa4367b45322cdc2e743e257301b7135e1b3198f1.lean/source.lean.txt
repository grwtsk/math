import Mathematics.StratifiedBoundary.OrdinalTally.FundamentalSequence
import Mathlib.Order.Monotone.Basic

/-!
# Registered limit index

The declared supremum is evidence, not a consequence of displaying a finite
prefix.
-/

namespace Mathematics.StratifiedBoundary

def IsDeclaredSupremum
    {Semantic : Type u}
    [Preorder Semantic]
    (sequence : Nat → Semantic)
    (limit : Semantic) : Prop :=
  (∀ stage, sequence stage ≤ limit) ∧
    ∀ upper,
      (∀ stage, sequence stage ≤ upper) →
        limit ≤ upper

structure RegisteredLimitIndex
    (Semantic : Type u)
    [Preorder Semantic] where
  sequenceId : FundamentalSequenceId
  index : Nat → Semantic
  declaredLimit : Semantic
  normalizedAtEveryStage : Prop
  normalizationEvidence : normalizedAtEveryStage
  monotone : Monotone index
  declaredSupremum :
    IsDeclaredSupremum index declaredLimit

theorem limit_index_monotone
    {Semantic : Type u}
    [Preorder Semantic]
    (limitIndex : RegisteredLimitIndex Semantic) :
    Monotone limitIndex.index :=
  limitIndex.monotone

theorem limit_index_has_declared_supremum
    {Semantic : Type u}
    [Preorder Semantic]
    (limitIndex : RegisteredLimitIndex Semantic) :
    IsDeclaredSupremum
      limitIndex.index
      limitIndex.declaredLimit :=
  limitIndex.declaredSupremum

end Mathematics.StratifiedBoundary
