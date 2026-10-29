/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
External metatheory candidate:
openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a,
OAI.PureTypeSystem.weak_implies_strong.
This file proves only generic simulation facts and does not import that theorem.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import Mathlib

/-!
# Reduction simulation for typed witness syntax

A theorem about normalization of an encoded target language can affect a local
witness language only after reduction steps are faithfully simulated.

This file isolates that generic transfer theorem. It does not define a PTS,
prove weak normalization, import OpenAI's PTS theorem, or prove confluence.
-/

set_option autoImplicit false

namespace GRWTSK.Logic.TypeTheory.WitnessSyntax

/-- Strong normalization for a forward reduction relation. The relation is
reversed only to match Lean's \`Acc\` convention. -/
def StronglyNormalizing {α : Type*} (step : α → α → Prop) (x : α) : Prop :=
  Acc (fun y x => step x y) x

/-- A one-step reduction simulation from local witness syntax into a target
reduction language. -/
structure ReductionSimulation (Local Target : Type*) where
  localStep : Local → Local → Prop
  targetStep : Target → Target → Prop
  encode : Local → Target
  step_encode :
    ∀ {x y : Local}, localStep x y → targetStep (encode x) (encode y)

/-- Strong normalization of the encoded target reflects to the local source
whenever every local step is preserved by the encoding.

This is the exact generic metatheoretic bridge needed after an external PTS
theorem supplies target strong normalization. -/
theorem ReductionSimulation.stronglyNormalizing_of_encode
    {Local Target : Type*}
    (B : ReductionSimulation Local Target)
    {x : Local}
    (h : StronglyNormalizing B.targetStep (B.encode x)) :
    StronglyNormalizing B.localStep x := by
  have aux :
      ∀ t : Target,
        StronglyNormalizing B.targetStep t →
        ∀ s : Local, B.encode s = t → StronglyNormalizing B.localStep s := by
    intro t ht
    induction ht with
    | intro t _ ih =>
        intro s heq
        apply Acc.intro
        intro s' hs'
        exact ih (B.encode s') (heq ▸ B.step_encode hs') s' rfl
  exact aux _ h x rfl

/-- Semantic preservation data are independent of reduction termination. -/
structure SemanticReductionBridge
    (Local Semantic : Type*) where
  localStep : Local → Local → Prop
  interpret : Local → Semantic
  semanticEq : Semantic → Semantic → Prop
  semantic_refl : ∀ x, semanticEq x x
  semantic_trans : ∀ {x y z}, semanticEq x y → semanticEq y z → semanticEq x z
  step_semantic :
    ∀ {x y : Local}, localStep x y →
      semanticEq (interpret x) (interpret y)

/-- Every finite reduction path preserves the declared semantic witness
relation. This theorem is intentionally independent of normalization. -/
theorem SemanticReductionBridge.reflTransGen_semantic
    {Local Semantic : Type*}
    (B : SemanticReductionBridge Local Semantic)
    {x y : Local}
    (h : Relation.ReflTransGen B.localStep x y) :
    B.semanticEq (B.interpret x) (B.interpret y) := by
  induction h with
  | refl =>
      exact B.semantic_refl _
  | @tail y z hxy hyz ih =>
      exact B.semantic_trans ih (B.step_semantic hyz)

/-- A combined bridge records both the reduction simulation and its semantic
interpretation without identifying the two obligations. -/
structure TypedWitnessNormalizationBridge
    (Local Target Semantic : Type*) where
  reduction : ReductionSimulation Local Target
  semantic : SemanticReductionBridge Local Semantic
  sameLocalStep :
    reduction.localStep = semantic.localStep

/-- The combined bridge yields source termination from target termination.
Semantic invariance remains available through the separate finite-path theorem;
neither conclusion implies the other. -/
theorem TypedWitnessNormalizationBridge.stronglyNormalizing
    {Local Target Semantic : Type*}
    (B : TypedWitnessNormalizationBridge Local Target Semantic)
    {x : Local}
    (h : StronglyNormalizing B.reduction.targetStep (B.reduction.encode x)) :
    StronglyNormalizing B.semantic.localStep x := by
  rw [← B.sameLocalStep]
  exact B.reduction.stronglyNormalizing_of_encode h

end GRWTSK.Logic.TypeTheory.WitnessSyntax
