# Positive based labeled cycles, live-state trace and individual lift-fiber invariance

Local attribution: grwtsk contributors.
Review date: 2026-11-02.
Status: published mathematical **Lean source proof candidates**, independently
checked finite integer cases, and explicit native acceptance gap. No claim of
Lean compilation or fresh kernel replay is made.

## 1. Precise theorem and mathematical scope

Let `G : LabeledGraph State Alphabet` be the repository's ORIGINAL
finite, Prop-valued labeled graph, with `[Fintype State]`,
`[DecidableEq State]` and `[Fintype Alphabet]`.
For each positive `n`, its actual based-cycle witness type is

```lean
BasedCycleData G n =
  Σ s : State, LabeledWalkData G n s s
```

where `LabeledWalkData` is the preexisting **snoc-inductive** Type carrying
the start and every intermediate original vertex, each ordered emitted
original letter and the corresponding `G.edge` proof. The based word is the
actual `basedCycleWord G n c : Fin n → Alphabet`.

The original live graph `rightLiveSubgraph G` has only original vertices
supporting a genuine infinite original graph path, and its edge field is
literally `G.edge s.val a t.val`. The source candidate proves

[
 operatorname{BasedCycleData}(G,n)
  simeq operatorname{BasedCycleData}(G_{mathrm{live}},n)
  qquad (0<n)
]

through actual witness transport, preserving each original `Fin n` emitted
word and its based initial vertex. It follows by the published
`trace_pow_eq_card_based_cycles` that

[
 operatorname{tr}(A_G^n)=
 operatorname{tr}(A_{G_{mathrm{live}}}^n)
 qquad (0<n).
]

The finite q-round pruning graph has the SAME right-live state set, with a
real original edge oracle. A separate, general theorem proves that any
finite labeled-state equivalence preserving the original
`edge s a t` propositions preserves every exact `labeledWalkCount`
entry after reindexing and all adjacency traces, INCLUDING exponent zero
for those *isomorphic* state graphs. Applied to the q-round pruned graph
and the right-live graph, this yields

[
 operatorname{tr}(A_G^n)=
 operatorname{tr}(A_{G_{mathrm{pruned}}}^n)
 qquad (0<n).
]

This is stronger than equality of distinct periodic-label-point counts.
Different actual graph-state lifts are retained as separate cycles.

The third new source identifies, for **each** original label word
`letters : Fin n → Alphabet`, an equivalence of original based-cycle
word fibers. It then relates the fibers to the existing
`SoficExactPeriodicTraceLedger.canonicalCycleMap` and the identity-on-labels
equivalence of original/live `PeriodicLabelPoint` subtypes. Therefore the
missing-lift and surplus-lift counts are preserved **individually**
for `n>0`, not inferred to be equal merely because their difference
balances a trace identity.

## 2. Exact source identities, original constructors and dependency roles

The combined immutable mathematical source revision is
`d7b40ebd4d230ef287df3fd3fdbe65ced4ccdfd9`.

New additive sources:

1. [SoficPositiveCycleLiveEquiv.lean](https://github.com/grwtsk/math/blob/d7b40ebd4d230ef287df3fd3fdbe65ced4ccdfd9/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPositiveCycleLiveEquiv.lean),
   Git blob `a623514d52cae51213f95e5b52a92f3275bc8e54`, originally
   published in commit `a82ea53e2e7683cfb06f53f7cb293571398c6155`.
   Source has 268 lines and 14 selected declarations. The real cycle
   data, original endpoints, labels and all original edges are preserved.
2. [SoficLiveMatrixTraceTransport.lean](https://github.com/grwtsk/math/blob/d7b40ebd4d230ef287df3fd3fdbe65ced4ccdfd9/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficLiveMatrixTraceTransport.lean),
   Git blob `c868852984f0a1ead767aec47e906e57a1f6588a`, originally
   published in commit `796144ee1a8730dd3a5873ed48ad2fb996725a1f`.
   Source has 225 lines and seven selected declarations. This is a
   different count/linear algebra mechanism for the *state-equivalence*
   part, not a second proof of original positive-cycle survival.
3. [SoficLiveCycleFiberInvariance.lean](https://github.com/grwtsk/math/blob/d7b40ebd4d230ef287df3fd3fdbe65ced4ccdfd9/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficLiveCycleFiberInvariance.lean),
   Git blob `8cc54d851f47c243535bb9ffcdfa1cda139b64fa`, originally
   published at the combined source commit above. Source has 222 lines
   and nine selected declarations.

The new proof uses the existing original source objects and theorems
without mutating their definitions:

- [SoficPeriodicMatrixTrace.lean](https://github.com/grwtsk/math/blob/d7b40ebd4d230ef287df3fd3fdbe65ced4ccdfd9/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicMatrixTrace.lean):
  original `LabeledWalkData`, `BasedCycleData`, `walkDataLabels`,
  `basedCycleWord`, `labeledAdjacency`, `labeledWalkCount` and
  `trace_pow_eq_basedClosedWalkCount`.
- [SoficBasedCycleCard.lean](https://github.com/grwtsk/math/blob/d7b40ebd4d230ef287df3fd3fdbe65ced4ccdfd9/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficBasedCycleCard.lean):
  finite original walk-witness cardinality and actual
  `trace_pow_eq_card_based_cycles`.
- [SoficCycleRepetitionFromWalk.lean](https://github.com/grwtsk/math/blob/d7b40ebd4d230ef287df3fd3fdbe65ced4ccdfd9/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficCycleRepetitionFromWalk.lean):
  true infinite periodic `basedCycleStateStream`,
  `basedCycleStateStream_zero` and `basedCycleStateStream_edge`
  derived from the SAME original closed `LabeledWalkData`.
- [SoficRightLiveSubgraph.lean](https://github.com/grwtsk/math/blob/d7b40ebd4d230ef287df3fd3fdbe65ced4ccdfd9/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficRightLiveSubgraph.lean):
  `RightLive`, backward propagation along each original edge and
  the actual `rightLiveSubgraph`.
- [SoficLiveRepresentationIntegration.lean](https://github.com/grwtsk/math/blob/d7b40ebd4d230ef287df3fd3fdbe65ced4ccdfd9/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficLiveRepresentationIntegration.lean):
  concrete q-round source pruning graph, the identity-on-original-vertex
  `prunedState_equiv_rightLiveState` and the definitional equality
  of the two previously published right-live graph representations.
- [SoficRightLivePeriodicInvariant.lean](https://github.com/grwtsk/math/blob/d7b40ebd4d230ef287df3fd3fdbe65ced4ccdfd9/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficRightLivePeriodicInvariant.lean):
  `periodicLabelPoint_equiv_rightLive`, a genuine equivalence on
  `Fin n` emitted labels and whole finite-factor-language proof.
- [SoficExactPeriodicTraceLedger.lean](https://github.com/grwtsk/math/blob/d7b40ebd4d230ef287df3fd3fdbe65ced4ccdfd9/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficExactPeriodicTraceLedger.lean):
  original, label-preserving `canonicalCycleMap`, including
  nonbijective lift-fiber cases.
- [SoficPeriodicFiberLedger.lean](https://github.com/grwtsk/math/blob/d7b40ebd4d230ef287df3fd3fdbe65ced4ccdfd9/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicFiberLedger.lean):
  actual `liftFiberCount`, `unliftedLabelCount` and
  `surplusLabelLiftCount` with the signed identity
  `trace + unlifted = distinct label points + surplus`.

The earlier [SoficDeadEndPruning.lean](https://github.com/grwtsk/math/blob/d7b40ebd4d230ef287df3fd3fdbe65ced4ccdfd9/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficDeadEndPruning.lean)
supplies the explicit original `SourceEdgeDecider G`, q-round
`retainedAfter`, source-identical pruned graph state subtype and the
finite nonblocking/live vertex proof. The newest source does NOT replace
any original path by a Boolean endpoint or discard multiplicities.
Its formal source types still refer to the same original graph and
alphabet with their Prop-valued edges.

## 3. Primary proof A: positive based cycles have live vertices

For each actual based cycle `c : BasedCycleData G n` with `0<n`,
the earlier source's `basedCycleStateStream` is a genuine infinite
periodic original state stream. At k=0 it equals `c.1`, and at every
k its next edge is the original `G.edge` emitting the real
`repeatBlock hn (basedCycleWord G n c)` label. Thus the original
base vertex is `RightLive G c.1`, with no determinism assumption
and no manually selected replacement state history.

For a general original snoc walk from s to t, a true right-live
continuation from t propagates backward along the final edge
and each earlier source edge. The lemma
`originalWalk_source_rightLive` proves the source endpoint live.
The proof-level function `liftOriginalWalk` then converts the ACTUAL
original walk into one over the right-live vertex subtype,
carrying the complete same original intermediate states,
edges and labels. The reverse `projectLiveWalk` forgets only
the right-live proof fields, not any state or edge occurrence.

The round-trip candidate lemmas
`project_liftOriginalWalk` and `lift_projectLiveWalk`
establish that these are inverses on actual snoc witnesses.
Proof-irrelevant liveness fields do not produce extra based
cycle witnesses. This yields the actual positive-n
`positiveBasedCycleEquiv` with an explicit inverse.
`projectedWalk_labels`, `projectBasedCycle_word` and
`positiveBasedCycleEquiv_word` preserve the literal full
original `Fin n` label word, including the based start.

The only genuinely new mathematical restriction is `0<n`.
At exponent zero, the original based cycle type contains
one empty walk at EVERY original vertex, even a terminal one.
Pruning may remove those states. Hence positive trace equality
cannot be extrapolated to n=0 without the independent
condition that all original vertices are live.

## 4. Primary proof B: independently inspect the matrix-state isomorphism

For arbitrary finite labeled graphs G and H with a true original
vertex equivalence `e : S ≃ T`, require

```lean
∀ (s : S) (a : Alphabet) (t : S),
  G.edge s a t ↔ H.edge (e s) a (e t).
```

This condition is stronger than mere inclusion of graph-word
languages or cardinal equality. Since the original finite
alphabet is unchanged, each exact natural-number letter-edge
multiplicity `edgeMultiplicity G s t` equals its image under e.

Induct on the original last-edge count recursion
`labeledWalkCount G n s t`. The base n=0 is equality of
the original source/target states, reflected by e.injective.
At step n+1, each intermediate-state summand is transported
by induction and the original edge multiplicity identity.
`Equiv.sum_comp` reindexes the complete finite state sum
bijectively; there is no missing intermediate state or
unordered-edge counting assumption. The result
`labeledWalkCount_eq_of_graphEquiv` holds for every
n, including zero, at every pair of original endpoints.

The actual original trace is the sum over *based* endpoint
walk counts. Reindex the original diagonal by e. The source
theorem `trace_pow_eq_of_graphEquiv` returns the true matrix
trace equality for ALL n under an actual state bijection.
This is a distinct algebraic proof of the **reindexing** step,
not an independent proof that trimming dead vertices loses
no positive cycles.

The prior `prunedState_equiv_rightLiveState` is exactly such
a state equivalence, preserving `G.edge` pointwise.
`finitePruned_trace_eq_rightLive_trace` supplies all-length
trace equality between those two LIVE representations.
Composing with the original positive-cycle theorem above
gives `positive_trace_eq_finitePruned_trace`, including all
original based-cycle label multiplicities at positive n.

The two methods share their source boundary: neither can
infer a positive trace identity from equality of DISTINCT
periodic label point counts. The original graph-to-label
cycle map can be noninjective or nonsurjective at period n.

## 5. Primary proof C: individual original label-word lift fibers

For each `letters : Fin n → Alphabet`, define
`BasedCycleWordFiber G n letters` as the subtype of ACTUAL
original based n-cycles satisfying the literal equation

```lean
basedCycleWord G n c = letters.
```

`positiveBasedCycleWordFiberEquiv` restricts the based-cycle
equivalence to these word fibers by its actual word-preservation
theorem. Therefore each word fiber's Fintype cardinality is
unchanged at every positive n. This is stronger than equality
of the total sum, since it preserves which source label word
each based cycle emits.

The existing `canonicalCycleMap` has an explicitly proved
identity `(canonicalCycleMap ... c).val = basedCycleWord G n c`.
Equality of its value to an actual `PeriodicLabelPoint p`
is therefore equivalent to equality of the original
`basedCycleWord G n c` with `p.val`, by Subtype.ext.
`canonical_liftFiberCount_eq_wordFiber_card` makes the
resulting cardinal comparison explicit.

The previously published
`periodicLabelPoint_equiv_rightLive` is identity on the
actual `Fin n` label word and transports the full
factor-language condition, even though terminal-only finite
graph words may have been removed. Thus the same original
label-point fiber cardinal persists before and after pruning:
`canonical_periodic_liftFiberCount_eq_rightLive`.

Summing the exact per-point identities across the finite
periodic-label subtype, using its actual Equiv, yields TWO
separate results:

```text
unliftedLabelCount(original canonical cycle map)
 = unliftedLabelCount(right-live canonical cycle map)

surplusLabelLiftCount(original canonical cycle map)
 = surplusLabelLiftCount(right-live canonical cycle map)
```

for each n>0, as
`unliftedLabelCount_eq_rightLive` and
`surplusLabelLiftCount_eq_rightLive`.
The source must NOT prove them by cancelling two
unknown terms in the signed ledger: equality of a sum
or difference alone would be insufficient to preserve
the missing and surplus defects separately.

## 6. Independent finite reference evidence and hostile controls

A new independently executed Python exact-integer checker
`sofic_live_cycle_trace_reference.py`, SHA256
`6cae793b15152467bfb1668e2ca0654ed2843f38bf5ff199215d2fb540921bba`,
enumerates the actual original path's intermediate vertex choices,
distinct labels and starting vertex, rather than merely recording
the existence of a word.

It tested all 261 labeled edge subsets on 0,1,2 original states
over two symbols, plus 110 deterministic three-state and 25
deterministic four-state graphs: **396** graphs, **946**
original vertices of which **903** were right-live.
The positive-period range was n=1..5, giving
**1,980** graph-period tests and **24,552** exact positive
based-cycle word-fiber comparisons. In total **138,672**
original based cycles were counted (summed across tests).
No word fiber changed under right-live pruning.

An independently evaluated exact natural-number adjacency
matrix power was compared to the sum of original based-cycle
word counts at each n, on BOTH source graphs, with no mismatch.
The checker also separately evaluated true all-finite-factor
periodic-word membership using finite state/phase subset
loops, not a selected finite factor cutoff. Across all tests,
there were **18,342** admitted periodic label words,
**319** unlifted label-word instances and **120,649**
surplus based cycle-lift instances. The original and live
counts of EACH of these three quantities matched in every
period test, and every original signed trace ledger balanced.
No mismatch was observed.

At **n=0**, exactly **35** tested graph instances had a
different original versus pruned identity-matrix trace,
corresponding to graphs with dead original vertices.
The source's two-state terminal-edge fixture
`false --Unit--> true` provides a particularly clear
counterexample: original trace(A^0)=2 while the empty
right-live graph has trace(A_live^0)=0. This exception is
not concealed by a trivial n=0 word fiber or a fake sink.

The source graphs with one-step duplicate self-loops
retain multiple based lifts for one label point; the
two-state alternating graph can lack a one-step closed
lift of a genuine period-one label point. Both cases
remain valid in the positive trace/fiber comparison and
demonstrate that equal trace magnitudes do not supply
an uncorrected graph/label-point bijection.

These are finite reference calculations, NOT a universal
proof, a compiled Lean module, or fresh trust-zero evidence.

## 7. Source dependencies, mathematical status and unresolved scope

The new Lean modules all live under the original MSC2020
DynamicalSystemsAndErgodicTheory subject tree. Their direct
imports are the actual original graph/cycle/trace/liveness
source modules already linked above, plus pinned Mathlib.
No root import is changed, and the underlying graph
source observations and signed defect conventions are
retained. `Fintype State`, `DecidableEq State`,
`Fintype Alphabet`, positive n, and exact
`GraphLanguage` for the canonical periodic map
are stated explicitly in the relevant declarations.

The full chain currently contains 49 selected GRWTSK
project modules, with 32 selected source contracts and
254 fully-qualified declaration names in the adjacent
managed Noe profile. The previous 46 selected project
module blobs were checked against the new source revision
and all matched. This is a STATIC SELECTED project-side
inventory; it is not a native verified full Mathlib import
closure. The selected Lean toolchain remains
`leanprover/lean4:v4.34.1`, Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

Actual evidence facets:
- Source publication and exact Git blob readback: CONFIRMED.
- Static direct declaration inspection: NO authored sorry or research axiom.
- Independent finite integer/path checks: PASS within their stated domain.
- Native Lean compilation and dependent Type/Sigma/Equiv elaboration: NOT_RUN.
- Expected types and universe checks: NOT_RUN.
- Fresh kernel replay: NOT_RUN.
- Complete transitive declaration axiom audit: NOT_RUN.
- Noe managed registry/host owner preparation and restoration: NOT_RUN.
- Proof acceptance and independent exact-statement novelty: NOT_ESTABLISHED.

In particular, the new Type-valued snoc-walk inverses and
dependent Sigma/Subtype equality consumers are genuine
elaboration obligations, not assumed kernel results.
The pinned matrix-sum reindex consumers must also be
checked with the installed Mathlib version. Any real error
requires a new source commit and a new matching receipt,
not a weakened premise or an invented compiler success.

The current Noe canonical proof skill was inspected at
`grwtsk/noeaaeue/main` snapshot
`c881496cc1b0c4e52f0dbb73d32ca6f9eea47b2d`,
skill blob `5292446e4ef1398ba928d8ad339b662415166f19`.
The local runtime has no `lean`, `lake`, `elan`,
or verified Noe checkout, and no native host ownership
was granted. No queue, scheduler or proof operator
was activated through these pure source publications.

This original Prop-indexed `LabeledGraph` allows
different source paths through different actual vertices
and different alphabet labels. It does NOT distinguish
multiple physically separate arrows with identical
(source,label,target) triples: a typed parallel-edge
Quiver or occurrence-graph representation requires
its own exact source comparison. Recent
`CertifiedSoficBoundedCatalogue` and
`CertifiedSoficCheckedOptimization` objects carry
separate route-certification and rational-bound
semantics and do not receive this cycle equivalence
without explicit edge/state bijections.

The analytical Möbius, signed Gaussian-heat,
zeta-zero divisor, spectral, PDE/Hodge and RH
source branches remain separate. Positive finite-graph
cycle equivalence does NOT supply their
quantitative cancellation/energy estimates,
full source-observation maps, Fredholm identities
or analytic completion premises.

## 8. Next precise tasks and source revision

The highest priority acceptance action is current
authorized Noe managed v3 source-closed compilation
at math revision `d7b40ebd4d230ef287df3fd3fdbe65ced4ccdfd9`,
followed separately by expected-type/universe
consumers, fresh kernel replay, transitive axiom
audit, and actual host resource restoration.
The review documents three source-level proof
mechanisms; proof acceptance depends on actual
native receipts and can require repair of
dependent Type-level elaboration.

After that, a separate source family can attempt
a certified finite original edge-occurrence adapter
or original adjacency matrix/reindex comparison
for other graph semantics. These are not silently
deduced from the present results.

Tracking issue: https://github.com/grwtsk/math/issues/1576.
