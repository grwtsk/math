# Source-exact finite dead-end pruning and decidable realized-factor queries

Local mathematical attribution: grwtsk contributors. Date: 2026-11-02.
Classification: mathematical proof argument and published Lean **SOURCE PROOF CANDIDATE**;
finite independent controls pass; native Lean and kernel acceptance are NOT_RUN.

## 1. What has been formalized

The previous development defines the unchanged original
`G : LabeledGraph State Alphabet`, with a proof-valued
`G.edge : State → Alphabet → State → Prop`, its actual
`WordPath`, `GraphLanguage`, and `RightLive G s` (existence
of a single original infinite state/label run starting at s).
The source proof candidates
`SoficFiniteTraceCompactness`, `SoficRightLiveSubgraph`
and `SoficBoundedLiveCycle` connect whole finite-factor
admissibility, the genuine topological subshift, and a finite
path-to-nonempty-cycle witness with total length at most q,
where q is the original number of states.

The new module
[SoficDeadEndPruning.lean](https://github.com/grwtsk/math/blob/e8f002141154f79719272ea53f423bdf7f826ae1/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficDeadEndPruning.lean)
is pinned to source revision
`e8f002141154f79719272ea53f423bdf7f826ae1`, Git blob
`7cd2b48cf6f29b8ea779666bd57cbc4ea887b1f5`
(386 lines, corrected after its first publication).
It defines **computable finite-set operations** with an
explicit original-edge oracle

```lean
SourceEdgeDecider G =
  (s : State) → (a : Alphabet) → (t : State) →
    Decidable (G.edge s a t)
```

rather than silently assigning decidability to an arbitrary
Proposition or changing the source edge relation.
Finite State and Alphabet and decidable equality of State
are explicit. A graph with empty State or empty Alphabet
is not excluded by the theorem.

The source algorithm is

```text
R_0 = all original vertices,
R_(k+1) = { s | exists a,t, G.edge(s,a,t) and t in R_k },
R = R_q.
```

`pruneStep`, `retainedAfter` and the Boolean query
`isRightLive` are actual `def` definitions, not
`noncomputable def` wrappers around `RightLive`.
They compute with the caller's specific decision procedure;
this is the precise definition-level executability statement,
not a native-performance or kernel acceptance claim.

The source-level mathematical result is:

```lean
s ∈ retainedAfter G decEdge (Fintype.card State)
  ↔ SoficRightLiveSubgraph.RightLive G s
```

(`mem_retainedAfter_card_iff_rightLive`). This is
unconditional relative to the ORIGINAL decidable edge
predicate and the finite carrier, and does not assume
every vertex has an outgoing edge.

## 2. Primary proof: monotonicity and stabilization at q

The exact edge membership lemma `mem_pruneStep_iff`
shows that a vertex survives the next round exactly when
one actual original source edge leads into the previous set.
`pruneStep_mono` shows monotonicity on input Finsets,
and `retainedAfter_antitone_step` proves the sequence
`R_0 ⊇ R_1 ⊇ R_2 ⊇ ···` is descending.

Any equality `R_(k+1)=R_k` persists under all later
applications of the SAME finite-set step function.
Suppose the algorithm had not stabilized at q, i.e.
`R_(q+1) ≠ R_q`. Then NONE of the first q+1 transitions
could have been an equality. Since each transition is a
strict subset, their cardinalities would decrease by at
least one at every round. Starting from `card R_0=q`,
after q+1 strict decreases one obtains a negative
cardinality, impossible. The source proof
`retainedAfter_stable_card` implements this contradiction
using original `Finset.card_lt_card` and natural-number
arithmetic.

The stable set is therefore a fixed point. Any surviving
vertex s has an actual original outgoing labeled edge into
the same surviving set. The proof
`rightLive_of_mem_retainedAfter_card` selects these edges
via a dependent Nat recursion entirely inside the retained
subtype. This gives a SINGLE original infinite state/label
trajectory, starting at s, whose every transition satisfies
the original `G.edge`. Classical selection appears in the
*correctness proof*; the finite pruning definitions retain
their explicit supplied decision procedure.

Conversely, from a genuine `RightLive G s`, shift its
actual infinite trajectory by one edge. By induction
on the number of pruning rounds, every next state survives
the preceding round. Hence s survives every round:
`mem_retainedAfter_of_rightLive`. Together the two
directions yield `mem_retainedAfter_card_iff_rightLive`
and the exact Boolean result `isRightLive_iff`.

This is the source-level connection to the previous
finite bounded path-to-cycle theorem. It does not
remove the distinction between graph cycle multiplicity,
period-compatible lift coverage and distinct label points.

## 3. Word support: a separate genuinely finite computation

The earlier `SoficFiniteSupportAutomaton` already proves

```text
t ∈ sourceSupportAfter G {s} word
  ↔ WordPath G s word t
  ↔ 0 < wordLiftMatrix G word s t.
```

The new executable `supportStep` and `supportAfter`
use the same `decEdge` to propagate a Finset of
possible original endpoints left-to-right. The lemma
`supportStep_eq_original` shows the exact equality to
the previous mathematical source step, and
`supportAfter_eq_original` proves equality of the
whole source endpoint set for every original finite
word, initial finite set and vertex.

The Boolean query is

```text
isRealizedFactor G decEdge word
  = decide ((supportAfter G decEdge univ word ∩ R_q).Nonempty).
```

This answers an EXISTENCE question only. There is no
claim that the number of surviving paths equals the number
of original full-walk witnesses. Indeed the original
`wordLiftMatrix` and adjacency-matrix trace retain
their exact natural-number multiplicities.

The new theorem
`isRealizedFactor_iff_path_to_rightLive`
identifies the Boolean output with the existence
of an ORIGINAL labeled `WordPath G s word t` whose
terminal vertex is genuinely right-live.
Composing with the published topological
`SoficRightLiveSubgraph.realized_iff_path_to_rightLive`
gives `isRealizedFactor_iff_topologicalFactor`:
the Boolean query returns true exactly when the
same finite source word occurs in some genuine
infinite stream in the original product-topological
complete-factor subshift.

This includes the original empty word and empty
source-state cases, without adding a nonemptiness
hypothesis. A terminal state removed by dead-end
pruning is NOT automatically relabeled as a
zero symbol, accepting sink or artificial self-loop.

## 4. Exact finite operation model and boundary

Let q be the actual number of original vertices and
r=card Alphabet. Direct dense evaluation of
`pruneStep` inspects up to q²r original edge decisions
per round. Exactly q rounds therefore take
O(q³r) edge checks and elementary finite-set operations,
excluding data-structure overhead and the cost of
deciding the original edge proposition. `supportAfter`
over a word of length m performs at most O(mq²)
edge checks in the dense model. One final intersection
and nonemptiness decision returns the realized-factor
Boolean. No natural-number path counts need to be
formed for this support-only question.

These are operation counts in a simple dense model,
not a measured Lean runtime, extraction, sparse-matrix
guarantee or end-to-end application benchmark.
The correctness theorem is conditional on a real
`SourceEdgeDecider G` whose decisions reflect the
ORIGINAL `G.edge`; a speculative or candidate
repository relation is NOT an admissible supplier.
`RightLive` still denotes original actual infinite
paths in the mathematical semantics.

An algebraic equivalent would be a Boolean-semiring
transition or SCC/path-to-cycle detector. That is
a known finite graph-theoretic approach, not an
independent mathematical novelty claim. The current
proof gives a direct descending-Finset formulation
matched to the repository's actual `WordPath`,
`RightLive`, source support and realized topological
factor language. No second proof is required for
the correctness proposition, and no unsupported
prior-art originality is asserted.

## 5. Independent finite tests and hostile examples

A separately authored Python reference model performed
TWO nonidentical liveness calculations:

1. Repeatedly prune states with no actual edge into
   the current retained set, starting from all vertices.
2. Independently enumerate every original source
   path of total length at most q and test whether
   its state sequence visits some vertex twice,
   thereby witnessing a path followed by a
   nonempty original closed cycle within q edges.

The models agreed for every vertex. Endpoint scanning
was independently checked by enumerating all original
intermediate-state paths for each finite word. Intersecting
those endpoints with the independently derived live
vertices agreed with the pruning Boolean realization
criterion in every case.

The exhaustive family covers all original two-symbol
edge subsets on q=0,1,2 states (261 graphs). It also
includes 110 seeded three-state and 25 seeded four-state
graphs. Total: **396 graphs**, **24,948 original
graph-word cases** (word lengths 0..5), **946 state
certificates**, **434,274 original path instances** and
zero mismatches. Original finite-path admission was
true in **19,553** cases; infinite realization was
true in **19,490**, with exactly **63** strict
finite-only cases. The reference script SHA256 was
`217727edf9463dabbef513dd6a8642b66ff31ff2b05dfe9e4628b1ccd24fee57`.
This is deterministic finite reference evidence only,
not a Lean compilation, kernel certificate or complete
arbitrary-state proof.

The specific terminal-edge graph
`false --Unit--> true` has pruning stages
`{false,true} → {false} → ∅`; neither state is
right-live and its accepted one-letter source word
does NOT occur in a true infinite stream.
The alternating two-state graph has both vertices
live at every round, even though it has no
same-period one-edge closed label lift.
The one-state self-loop and empty-state graph
also obey the exact mathematical source convention.
This is a meaningful hostile check of dead-end
handling without accidental sink normalization.

## 6. Verification and return to the existing mathematics

This source increment does not change original
`LabeledGraph`, `WordPath`, `BasedCycleData`,
`labeledAdjacency`, `wordLiftMatrix`, the original
full factor-language assumption, or the signed
missing/surplus lift ledger. In particular
`trace(A_G^n)+U_n=#P_n+S_n` remains the
correct relationship when graph n-cycle labels
are not bijective.

The previous right-live/path-to-cycle mathematical
sources remain source proof candidates pending
native compilation. This newest source imports
`SoficBoundedLiveCycle`,
`SoficFiniteSupportAutomaton` and pinned Mathlib.
There is no new root import, toolchain upgrade,
external executable script or mutable state
committed to grwtsk/math.

Source publication: first commit
`3fe901a52d2f2e98121133f69d8007deababe3d8`;
narrow Boolean-query proof simplification:
`e8f002141154f79719272ea53f423bdf7f826ae1`.
The latter is the **pinned exact mathematical source**;
blob `7cd2b48cf6f29b8ea779666bd57cbc4ea887b1f5`
was fetched back exactly. Both commits were
non-force updates of existing main, preserving
concurrent source changes.

Selected environment: Lean
`leanprover/lean4:v4.34.1`, Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
The adjacent verification target and managed
profile include the 41 previously selected
project-side modules and this new module,
with all source blobs rechecked against the
pinned Git revision. No full upstream closure
or native proof checking has run.

- Source-diff/immutable Git blob readback: CONFIRMED.
- Static authored declaration scan: no new sorry/axiom.
- Explicit edge-decision and finite computation
  definitions: SOURCE-INSPECTED.
- Native Lean syntax/elaboration/compilation: NOT_RUN.
- Expected types and universe audit: NOT_RUN.
- Fresh trust-zero kernel replay: NOT_RUN.
- Complete transitive axiom audit: NOT_RUN.
- Noe managed registry-v3 parser/host activation
  and subsequent host restoration: NOT_RUN.
- Executable performance benchmark: NOT_RUN.
- Mathematical proof acceptance: PENDING.

The canonical Noe proof automation skill was
read from `grwtsk/noeaaeue/main` at commit
`c93ba30a792e3184c8dae532a515619052585300`
(skill blob
`5292446e4ef1398ba928d8ad339b662415166f19`).
The source contract grants no native execution
or queue authority, and this ChatGPT runtime
has no Lean/Lake/verified local Noe checkout.
No owner or resource hold was bypassed.

## 7. Remaining exact obligations

The next step toward formal proof acceptance is
authorized Noe managed registry-v3 preparation,
fresh import-closure compilation of this precise
source revision, and separate expected-interface,
kernel replay, complete transitive axiom and
host-restoration evidence. Any actual elaboration
failures must be reported against the precise
source and dependency bytes, and repaired
without replacing the original edge predicate.

An optional further programming increment is a
certified `Decidable` instance adapter for
selected finite graph sources and small
`#eval` controls, but only where those graph
edge oracles are actually specified. A separate
fast sparse/SCC implementation requires its
own provable refinement and benchmark.

No finite-state graph or subshift source theorem
alone supplies the arithmetic one-sided
subexponential signed-energy estimate needed
for the separate RH-facing programme, a
complete zeta divisor or a PDE/Hodge regularity
assertion. Those source-specific analytic
obligations remain independently open.

Tracking: https://github.com/grwtsk/math/issues/1576.
