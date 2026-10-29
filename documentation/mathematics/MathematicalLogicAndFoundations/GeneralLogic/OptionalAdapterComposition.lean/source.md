# Complete source: GRWTSK.Interfaces.OptionalAdapterComposition

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `412598b63dc6cf0c6e04d53a852c0dd508f9fc36` · SHA-256 `ec8ee83bb39c2a4c7389a442877703ede41229340b5584853359567b34fbeab5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.OptionalAdapterGate

namespace GRWTSK.Interfaces.OptionalAdapterGate

universe u

/-- A proof-carrying sequence of accepted optional adapters.

The intermediate ledger is part of the type of each constructor, so every later adapter is
validated against the actual result of all earlier changes. -/
inductive AcceptedPlan {Key : Type u} [DecidableEq Key] :
    Ledger Key → Ledger Key → Type (u + 1)
  | nil (L : Ledger Key) : AcceptedPlan L L
  | cons {L M : Ledger Key}
      (A : AcceptedAdapter L)
      (rest : AcceptedPlan A.apply M) :
      AcceptedPlan L M

namespace AcceptedPlan

variable {Key : Type u} [DecidableEq Key]
variable {L M N : Ledger Key}

/-- The set of residual keys selected by a proof-carrying adapter plan. -/
def Touches {L M : Ledger Key} : AcceptedPlan L M → Key → Prop
  | .nil _, _ => False
  | .cons A rest, key => key = A.change.key ∨ rest.Touches key

/-- Concatenate two accepted plans through their exact intermediate ledger. -/
def append {L M N : Ledger Key} : AcceptedPlan L M → AcceptedPlan M N → AcceptedPlan L N
  | .nil _, q => q
  | .cons A rest, q => .cons A (append rest q)

@[simp]
theorem nil_append (P : AcceptedPlan L M) :
    append (.nil L) P = P := rfl

@[simp]
theorem append_nil (P : AcceptedPlan L M) :
    append P (.nil M) = P := by
  induction P with
  | nil => rfl
  | cons A rest ih => simp [append, ih]

/-- Concatenation of accepted plans is associative. -/
theorem append_assoc
    (P : AcceptedPlan L M) (Q : AcceptedPlan M N)
    {O : Ledger Key} (R : AcceptedPlan N O) :
    append (append P Q) R = append P (append Q R) := by
  induction P with
  | nil => rfl
  | cons A rest ih => simp [append, ih]

/-- A key not selected by any adapter in the plan is unchanged in the final ledger. -/
theorem apply_eq_of_not_touches
    (P : AcceptedPlan L M) {key : Key} (h : ¬ P.Touches key) :
    M key = L key := by
  induction P with
  | nil => rfl
  | cons A rest ih =>
      have hne : key ≠ A.change.key := by
        intro hk
        exact h (Or.inl hk)
      have hrest : ¬ rest.Touches key := by
        intro ht
        exact h (Or.inr ht)
      exact (ih hrest).trans (A.apply_of_ne hne)

/-- Structural absence is preserved at every key untouched by an accepted plan. -/
theorem preserves_none_of_not_touches
    (P : AcceptedPlan L M) {key : Key}
    (hkey : L key = none) (h : ¬ P.Touches key) :
    M key = none := by
  rw [P.apply_eq_of_not_touches h, hkey]

/-- Every touched key is touched by the left plan or the right plan after concatenation. -/
theorem touches_append
    (P : AcceptedPlan L M) (Q : AcceptedPlan M N) (key : Key) :
    (append P Q).Touches key ↔ P.Touches key ∨ Q.Touches key := by
  induction P with
  | nil => simp [append, Touches]
  | cons A rest ih =>
      simp [append, Touches, ih, or_assoc]

end AcceptedPlan

end GRWTSK.Interfaces.OptionalAdapterGate
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b26205e47b0f1f4187b267f22c2839a03820e5e6fd6e565d950d984551fe53e9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterComposition.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
