# Exact periodic shift-point trace ledger: a source-bound graph-to-label map

Local mathematical attribution: grwtsk contributors.

## The mathematical gain

An exact finite-word-language graph is sufficient to define the *canonical*
label-preserving map from each actual based closed graph walk to a genuine
period-dividing-n shift point, for every positive n. This was an explicitly
unproved map-existence proposition in the original
`SoficPeriodicFiberLedger.lean` source. The previous original-walk
periodic-state construction, rather than a freely supplied graph run,
discharges the necessary infinite cyclic-factor admissibility.

Source proof candidate:
[SoficExactPeriodicTraceLedger.lean](https://github.com/grwtsk/math/blob/be79cce5f40c97a5b5fbf5b466598d32309fa00c/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficExactPeriodicTraceLedger.lean),
commit `be79cce5f40c97a5b5fbf5b466598d32309fa00c`, blob
`b3f5b7ce5e0b7eb0a4c1081dce166815824b6bac`.
This is a 263-line new Lean source file; all previous graph and periodic-point
definitions remain exactly as published. Pinned source is from `grwtsk/math/main`
with Lean `v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Original objects and proof

`G : LabeledGraph State Alphabet` is the original edge-predicate graph.
`BasedCycleData G n` is the sigma type of actual inductive
`LabeledWalkData G n s s`, retaining all intermediate states, symbols
and edge witnesses. `PeriodicLabelPoint language n hn` consists of a
finite length-n block whose entire infinite periodic repetition has
*every* finite factor in the specified source language.
The exactness assumption is
`hExact : ∀ w, language w ↔ GraphLanguage G w`. No individual
pointwise graph-path inclusion is substituted for that equality.

The already published
`SoficCycleRepetitionFromWalk.cycleRepetitionsRun_of_original_closedWalk`
produces for every actual n-cycle a periodic infinite source state
run with its exact original repeated symbols. The earlier
`graphLanguage_of_run_block` then proves every finite factor of
that repeated sequence is a real graph word, and `hExact` returns
every one of those factors to the specified shift language.

Therefore the canonical map
`canonicalCycleMap G language hExact n hn` is a real function
from based graph cycles to period-dividing-n shift points, with
`(canonicalCycleMap ... c).val = basedCycleWord G n c`.
The declaration `hasLabelPreservingCycleMap_of_exact` now supplies
the original ledger's named `HasLabelPreservingCycleMap` for every
exact presentation, without a selected, unproved map. The theorem
`canonicalCycleMap_unique` proves every other label-preserving map
to this type must equal the canonical one, by subtype extensionality.

The existing finite original inductive-walk cardinality theorem
proves that the matrix trace is the number of based cycles.
Partitioning those actual cycles by their canonical label point
gives `exact_trace_eq_sum_cycle_fibers`. Let `U_n` count genuine
periodic label points with zero lifts and `S_n` count all graph
lifts above the first lift of each point. The existing fiber
partition and `Nat` arithmetic yield the source-exact identity

```text
matrix trace(A^n) + U_n = #period-dividing-n label points + S_n.
```

This is `exact_trace_add_unlifted_eq_label_card_add_surplus`, with
NO faithfulness or same-period completeness hypothesis.
`exact_trace_eq_periodic_card_iff_balanced_defects` states that
numeric equality is equivalent to `U_n=S_n`, rather than to
the cycle map being a bijection.

## Sharp one-sided consumers

Under `FaithfulCycleWords G n`, the actual cycle-label map
is injective, hence trace(A^n) ≤ #periodic points. Under
`CompleteCycleLifts G language n hn`, it is surjective,
hence #periodic points ≤ trace(A^n). These are the
`exact_trace_le_periodic_card_of_faithful` and
`exact_periodic_card_le_trace_of_complete` declarations.

The finite cardinality criterion in the pinned Mathlib
(`Fintype.bijective_iff_injective_and_card` and its
surjective dual) proves the exact converses:
- If faithfulness is known, equality of the two counts is
  equivalent to complete period-matched lift coverage.
- If completeness is known, equality of the counts is
  equivalent to faithfulness of actual graph cycle words.

Neither one-sided condition is inferred from complete finite-word
language equality. The source does not infer any analytic, zeta or
Fredholm property from this finite comparison.

## Concrete hostile equality without bijectivity

A two-vertex, two-letter finite graph illustrates *balanced* errors.
Take vertices 0 and 1 and alphabet symbols 0 and 1.
Every 0-labeled edge fixes the state; every 1-labeled edge toggles it.
Every finite binary word is admitted, since arbitrary finite state
sequences can follow these edges. At n=1 the two 0-loops supply TWO
based cycles with the same 0 label; the periodic constant-1 label
point has no one-step closed graph lift because the 1-edge toggles
the state. Hence the canonical fiber counts are f(0)=2, f(1)=0,
giving trace=2, periodic point count=2, U_1=1 and S_1=1.
This is a *mathematical counterexample to count-equality implying
label-preserving bijectivity*, consistent with the exact ledger.
The original published double-loop and alternating-state fixtures
separately exhibit surplus-only and missing-only failure.

## Independent finite evidence and boundaries

A separate exhaustive Python reference check considered all 278
edge-predicate graphs over one or two states and one or two symbols,
and periods n=1,2,3,4: 1,112 graph-period cases.
For each block the full infinite periodic factor-language criterion
was decided by finite subset-automaton cycle detection at every
modular offset, not by an arbitrary finite block-length cutoff.
All actual based labeled cycle words were admitted; the canonical
fiber decomposition, defect identity, one-sided inequalities
and both finite equality-criterion implications held in all cases.
Across the cases: 12,314 based cycles, 5,368 periodic label points,
654 cases with nonfaithful cycle words, 68 with incomplete
same-period lifts, and zero discrepancies. This finite enumeration
is not a proof of the unrestricted theorem.

Publication and immutable blob readback: **CONFIRMED**.
Lean compilation: **NOT_RUN**. Expected-type check: **NOT_RUN**.
Fresh kernel replay: **NOT_RUN**. Transitive axiom audit: **NOT_RUN**.
Independent external mathematical proof review: **PENDING**.
No Lean/Lake toolchain was available in this local runtime.
The published commit has no source-bound successful GitHub check run.
No Noe native worker or host execution was invoked. No new
research axiom or `sorry` was written in the new source; this
does not constitute a transitive axiom audit.
The canonical Noe proof-automation source was inspected from
`grwtsk/noeaaeue/main`, revision
`d4db7d83a71e04df066754e2b041d006e924669f`.

## Next mathematical frontier

For an arbitrary exact finite-state presentation it is false that
every shift period-n point has a graph lift closed after exactly n
edges; the alternating-state graph disproves it. A nonvacuous
generic extension is to prove finite-state *period-multiple lifting*:
every period-dividing-n label point has an actual closed graph walk
of length m*n for some m>0, with the original repeated n-word as
its length-m*n label word. The source proof needs a finite
pigeonhole/pumping argument on block-boundary states, preserving the
original `WordPath`, `LabeledWalkData`, symbol sequence and
integer periods. It must not pretend m=1. Separate source-bound
Lean compilation, fresh kernel replay and axiom audit remain
independent acceptance obligations.
