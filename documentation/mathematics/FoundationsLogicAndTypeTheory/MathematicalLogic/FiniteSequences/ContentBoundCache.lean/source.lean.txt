/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Lean imports retain upstream authorship and licensing. -/
import Init

/-! Exact-content observation reuse and token-bound queue completion.
Equality of bytes and observer profile is a premise; digest equality is not
assumed injective. These laws do not certify an external storage implementation. -/
set_option autoImplicit false

namespace GRWTSK.MathematicalLogic.FiniteSequences.ContentBoundCache

theorem observation_reuse {Bytes Profile Observation : Type}
    (observe : Profile → Bytes → Observation) {profile₁ profile₂ : Profile}
    {before after : Bytes} (hp : profile₁ = profile₂) (hb : before = after) :
    observe profile₁ before = observe profile₂ after := by
  cases hp
  cases hb
  rfl

def update {Key Value : Type} [DecidableEq Key]
    (cache : Key → Value) (changed : Key → Bool) (fresh : Key → Value) : Key → Value :=
  fun key => if changed key then fresh key else cache key

theorem unchanged_preserved {Key Value : Type} [DecidableEq Key]
    (cache fresh : Key → Value) (changed : Key → Bool) (key : Key)
    (h : changed key = false) : update cache changed fresh key = cache key := by
  simp [update, h]

theorem changed_refreshed {Key Value : Type} [DecidableEq Key]
    (cache fresh : Key → Value) (changed : Key → Bool) (key : Key)
    (h : changed key = true) : update cache changed fresh key = fresh key := by
  simp [update, h]

def CompletionAllowed {Token : Type} (current submitted : Token)
    (now expiry : Nat) : Prop := current = submitted ∧ now ≤ expiry

theorem stale_token_rejected {Token : Type} {current submitted : Token}
    {now expiry : Nat} (h : current ≠ submitted) :
    ¬ CompletionAllowed current submitted now expiry := fun allowed => h allowed.1

theorem expired_rejected {Token : Type} {current submitted : Token}
    {now expiry : Nat} (h : ¬ now ≤ expiry) :
    ¬ CompletionAllowed current submitted now expiry := fun allowed => h allowed.2

/-- Completion binds both the immutable task and the live lease token. -/
def BoundCompletionAllowed {Binding Token : Type}
    (currentBinding submittedBinding : Binding) (current submitted : Token)
    (now expiry : Nat) : Prop :=
  currentBinding = submittedBinding ∧ CompletionAllowed current submitted now expiry

/-- A valid lease cannot authorize completing a different task binding. -/
theorem changed_binding_rejected {Binding Token : Type}
    {currentBinding submittedBinding : Binding} {current submitted : Token}
    {now expiry : Nat} (h : currentBinding ≠ submittedBinding) :
    ¬ BoundCompletionAllowed currentBinding submittedBinding current submitted now expiry :=
  fun allowed => h allowed.1

/-- Every allowed completion retains the current binding and live-token condition. -/
theorem bound_completion_conditions {Binding Token : Type}
    {currentBinding submittedBinding : Binding} {current submitted : Token}
    {now expiry : Nat}
    (allowed : BoundCompletionAllowed currentBinding submittedBinding current submitted now expiry) :
    currentBinding = submittedBinding ∧ current = submitted ∧ now ≤ expiry :=
  ⟨allowed.1, allowed.2.1, allowed.2.2⟩

end GRWTSK.MathematicalLogic.FiniteSequences.ContentBoundCache
