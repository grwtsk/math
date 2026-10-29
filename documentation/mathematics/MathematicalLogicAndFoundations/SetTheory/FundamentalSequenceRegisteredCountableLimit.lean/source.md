# Fundamental Sequence Registered Countable Limit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d58862f033fea28613aa7532b7b1babd4b3d31e` · SHA-256 `b5c792ba70da7597f8cb2849906a4c8e99668239d6cd28855578a88d5342bcc5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.SetTheory.Ordinal.Family
import Mathematics.StratifiedBoundary.OrdinalTally.NormalForm

/-!
# Registered countable limits

A countable limit is not executable ordinal syntax.  It is a separately named
target together with one certified, strictly increasing, cofinal
`Nat`-indexed family of executable normal forms.  The `Nat` index explicitly
restricts this registry to limits of cofinality omega.
-/

namespace Mathematics.StratifiedBoundary.OrdinalTally

structure RegisteredCountableLimit where
  id : FundamentalSequenceId
  target : Ordinal
  approximation :
    Nat → ExecutableNormalForm
  strictMono :
    StrictMono
      (fun stage =>
        (approximation stage).value)
  belowTarget :
    ∀ stage,
      (approximation stage).value < target
  cofinal :
    ∀ {candidate},
      candidate < target →
      ∃ stage,
        candidate ≤
          (approximation stage).value
  supremum_eq :
    (⨆ stage : Nat,
      (approximation stage).value) =
        target

namespace RegisteredCountableLimit

theorem stage_lt_target
    (registered : RegisteredCountableLimit)
    (stage : Nat) :
    (registered.approximation stage).value <
      registered.target :=
  registered.belowTarget stage

theorem has_declared_supremum
    (registered : RegisteredCountableLimit) :
    (⨆ stage : Nat,
      (registered.approximation stage).value) =
        registered.target :=
  registered.supremum_eq

def SemanticallyEquivalent
    (left right : RegisteredCountableLimit) : Prop :=
  left.target = right.target ∧
    ∀ stage,
      (left.approximation stage).value =
        (right.approximation stage).value

structure EqualityCertificate
    (left right : RegisteredCountableLimit) : Prop where
  sameTarget :
    left.target = right.target
  mutuallyCofinal :
    (∀ stage,
      ∃ later,
        (left.approximation stage).value ≤
          (right.approximation later).value) ∧
    (∀ stage,
      ∃ later,
        (right.approximation stage).value ≤
          (left.approximation later).value)

end RegisteredCountableLimit

structure CountableLimitRegistry where
  entries : List RegisteredCountableLimit
  uniqueIds :
    (entries.map RegisteredCountableLimit.id).Nodup

def CountableLimitRegistry.Admits
    (registry : CountableLimitRegistry)
    (sequenceId : FundamentalSequenceId) : Prop :=
  ∃ registered ∈ registry.entries,
    registered.id = sequenceId

def CountableLimitRegistry.AdmitsTarget
    (registry : CountableLimitRegistry)
    (registered : RegisteredCountableLimit) : Prop :=
  ∃ entry ∈ registry.entries,
    entry.id = registered.id ∧
      entry.target = registered.target

end Mathematics.StratifiedBoundary.OrdinalTally
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2a73ed5436d6f59144763f4052d6a9827e1f85900e4502106805a64e63d8527e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variantb5c792ba70da7597f8cb2849906a4c8e99668239d6cd28855578a88d5342bcc5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
