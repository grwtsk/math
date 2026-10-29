# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Frequency.Variant4a27215ce29e3379a602a917f699ec76fdef65d98e6c3281009808c78fcd7446

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd3564055ebabef62dc3510c6f1dfc47514a7333` · SHA-256 `4a27215ce29e3379a602a917f699ec76fdef65d98e6c3281009808c78fcd7446`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Resolution.Checker
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Finset.Card

/-!
# Exactly-once generation frequencies

Frequency is a natural-valued scheduling coordinate.  It carries no theorem
authority.
-/

namespace Mathematics.Resolution

universe u v w

def InvocationCut.frequency
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (cut : InvocationCut Obligation Proof Event)
    (obligation : Obligation) :
    Nat :=
  (cut.events.filter fun event ↦
    cut.canonicalize event = obligation).card

theorem InvocationCut.frequency_positive
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (cut : InvocationCut Obligation Proof Event)
    {obligation : Obligation}
    (required : obligation ∈ cut.obligations) :
    0 < cut.frequency obligation := by
  apply Finset.card_pos.mpr
  refine ⟨cut.seed obligation, ?_⟩
  exact Finset.mem_filter.mpr
    ⟨cut.seed_mem obligation required,
      cut.seed_target obligation required⟩

theorem committed_event_replay_idempotent
    [DecidableEq Event]
    {events : Finset Event}
    {event : Event}
    (committed : event ∈ events) :
    insert event events = events :=
  Finset.insert_eq_of_mem committed

structure FrequencyWeight where
  numerator : Nat
  denominator : Nat
  denominator_positive : 0 < denominator
  deriving Repr

def totalFrequency
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (cut : InvocationCut Obligation Proof Event) :
    Nat :=
  ∑ obligation ∈ cut.obligations, cut.frequency obligation

end Mathematics.Resolution
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13f0890547c2ef71f2b20b4262d4c93c054483d82bd02d2651748b23c539f48d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Frequency/Variant4a27215ce29e3379a602a917f699ec76fdef65d98e6c3281009808c78fcd7446.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
