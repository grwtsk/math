import Mathematics.Resolution.Cut

/-!
# Kernel-sound multivalued proof registries

Rejected proof objects remain in the registry.  Only an accepted object can
remove its obligation from the unresolved set.
-/

namespace Mathematics.Resolution

universe u v

structure TrustedChecker (Obligation : Type u) (Proof : Type v) where
  proposition : Obligation → Prop
  check : Obligation → Proof → CheckResult
  sound :
    ∀ obligation proof,
      check obligation proof = .accept →
        proposition obligation

def accepted
    [DecidableEq Proof]
    (checker : TrustedChecker Obligation Proof)
    (registry : Obligation → Finset Proof)
    (obligation : Obligation) :
    Finset Proof :=
  (registry obligation).filter fun proof ↦
    checker.check obligation proof = .accept

def proofStatus
    [DecidableEq Proof]
    (checker : TrustedChecker Obligation Proof)
    (registry : Obligation → Finset Proof)
    (obligation : Obligation) :
    ProofStatus :=
  if (accepted checker registry obligation).Nonempty then
    .proved
  else if registry obligation = ∅ then
    .unknownMissing
  else
    .unknownUnaccepted

def unresolved
    [DecidableEq Obligation]
    [DecidableEq Proof]
    (obligations : Finset Obligation)
    (checker : TrustedChecker Obligation Proof)
    (registry : Obligation → Finset Proof) :
    Finset Obligation :=
  obligations.filter fun obligation ↦
    accepted checker registry obligation = ∅

theorem accepted_proves
    [DecidableEq Proof]
    (checker : TrustedChecker Obligation Proof)
    (registry : Obligation → Finset Proof)
    {obligation : Obligation}
    {proof : Proof}
    (member : proof ∈ accepted checker registry obligation) :
    checker.proposition obligation :=
  checker.sound obligation proof (Finset.mem_filter.mp member).2

@[simp] theorem mem_unresolved
    [DecidableEq Obligation]
    [DecidableEq Proof]
    {obligations : Finset Obligation}
    {checker : TrustedChecker Obligation Proof}
    {registry : Obligation → Finset Proof}
    {obligation : Obligation} :
    obligation ∈ unresolved obligations checker registry ↔
      obligation ∈ obligations ∧
      accepted checker registry obligation = ∅ := by
  simp [unresolved]

theorem accepted_mono
    [DecidableEq Proof]
    (checker : TrustedChecker Obligation Proof)
    {left right : Obligation → Finset Proof}
    (extension : ∀ obligation, left obligation ⊆ right obligation)
    (obligation : Obligation) :
    accepted checker left obligation ⊆
      accepted checker right obligation := by
  intro proof member
  have parts := Finset.mem_filter.mp member
  exact Finset.mem_filter.mpr
    ⟨extension obligation parts.1, parts.2⟩

theorem unresolved_antitone
    [DecidableEq Obligation]
    [DecidableEq Proof]
    (obligations : Finset Obligation)
    (checker : TrustedChecker Obligation Proof)
    {left right : Obligation → Finset Proof}
    (extension : ∀ obligation, left obligation ⊆ right obligation) :
    unresolved obligations checker right ⊆
      unresolved obligations checker left := by
  intro obligation member
  have rightParts := mem_unresolved.mp member
  apply mem_unresolved.mpr
  refine ⟨rightParts.1, ?_⟩
  by_contra nonempty
  obtain ⟨proof, leftAccepted⟩ :=
    Finset.nonempty_iff_ne_empty.mpr nonempty
  have rightAccepted :=
    accepted_mono checker extension obligation leftAccepted
  rw [rightParts.2] at rightAccepted
  simp at rightAccepted

end Mathematics.Resolution
