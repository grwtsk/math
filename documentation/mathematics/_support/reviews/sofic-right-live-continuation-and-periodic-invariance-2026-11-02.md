# Right-live essentialization of the original finite sofic presentation

Local mathematical attribution: grwtsk contributors.
Mathematical source review: 2026-11-02.
Classification: inspectable mathematical arguments and published Lean
**SOURCE PROOF CANDIDATES**. Native Lean compilation, expected-type
checking, fresh kernel replay and full transitive axiom audit NOT_RUN.

## Abstract

The original finite graph language `GraphLanguage G` contains every
finite labeled `WordPath`, including dead-ending words. The actual
one-sided topological subshift built from the original complete
finite-factor condition consists of infinite streams; not every
finite graph path is a factor of such a stream.

The new source isolates the exact boundary by defining a **right-live
original vertex** as one from which an actual infinite original
labeled edge run begins. A finite original word is
**right-extendable** if at least one actual source WordPath spelling
that word terminates at a right-live vertex. We prove that every
right-extendable word is truly realized in the original topological
subshift, and that all original finite words are realized if every
original state has an actual labeled outgoing edge.

Restricting the original graph to its right-live original states
creates a genuine nonblocking graph WITHOUT changing the indexed
source edge predicate or emitted symbols. Its finite path language
is exactly the language of right-extendable original words, and
also exactly the finite-factor language realized in the restricted
graph's genuine topological subshift. This identifies a precise,
nonvacuous source essentialization, even when the original graph has
dead-end or isolated vertices.

The deeper invariant is that **all actual infinite graph label
runs are identical before and after this pruning**. Consequently,
using the preexisting bounded periodic graph-state lift, every
positive-period `PeriodicLabelPoint` survives right-live pruning
with the very same Fin n label tuple. The period-n topological
label-point cardinal is unchanged, even when the full finite
source-word language loses nonextendable words. No same-period
graph-state lift, zero-period trace invariance, or equality of
graph/label cycle multiplicities is inferred.

## 1. Exact original sources and published increments

The combined new mathematical source revision is
`a4f5bf1380f89929611f177bd5a163f8850f5c00`. Three additive Lean source files were published to
existing `grwtsk/math/main` with a one-file diff check,
a non-force expected-head update and an immutable Git blob readback:

1. [SoficRightInfiniteContinuation.lean](https://github.com/grwtsk/math/blob/a4f5bf1380f89929611f177bd5a163f8850f5c00/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficRightInfiniteContinuation.lean),
   source Git blob `81deeb4768d43e13654b2aabb004c31478d2c9d5`,
   247 lines, original publication commit
   `4a671afd6c9441af772b6b7cdd6063b6ea3a4d70`.
2. [SoficRightLivePruning.lean](https://github.com/grwtsk/math/blob/a4f5bf1380f89929611f177bd5a163f8850f5c00/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficRightLivePruning.lean),
   blob `cb51c846c361986a123171a851e8b82155d901d5`,
   203 lines, publication commit
   `d0288331cd6eff4504879634b0edf3f08758c651`.
3. [SoficRightLivePeriodicInvariant.lean](https://github.com/grwtsk/math/blob/a4f5bf1380f89929611f177bd5a163f8850f5c00/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficRightLivePeriodicInvariant.lean),
   blob `c5472ba92348a988e1dc12b870ca8973cfa20bf7`,
   203 lines, publication commit `a4f5bf1380f89929611f177bd5a163f8850f5c00`.

The preexisting mathematical definitions remain the canonical sources:

- [ExactSoficLanguageCover.lean](https://github.com/grwtsk/math/blob/a4f5bf1380f89929611f177bd5a163f8850f5c00/GRWTSK/DynamicalSystemsAndErgodicTheory/ExactSoficLanguageCover.lean):
  `LabeledGraph`, `WordPath`, `GraphLanguage`,
  `RunsOnGraph`, `HasFiniteBlock`,
  `wordPath_append` and `wordPath_split_append`.
- [SoficPeriodicRunFullShift.lean](https://github.com/grwtsk/math/blob/a4f5bf1380f89929611f177bd5a163f8850f5c00/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicRunFullShift.lean):
  source edge-by-edge finite-block soundness of a genuinely
  infinite graph run.
- [SoficTopologicalFactorSpace.lean](https://github.com/grwtsk/math/blob/a4f5bf1380f89929611f177bd5a163f8850f5c00/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficTopologicalFactorSpace.lean):
  actual closed topological `completeFactorSubshift` and
  equivalence of its carrier with admission of ALL finite factors.
- [SoficTopologicalLanguageBoundary.lean](https://github.com/grwtsk/math/blob/a4f5bf1380f89929611f177bd5a163f8850f5c00/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficTopologicalLanguageBoundary.lean):
  inclusion of realized infinite factors in the finite source
  graph language, plus the original terminal-edge hostile fixture.
- [SoficPeriodicStreamBridge.lean](https://github.com/grwtsk/math/blob/a4f5bf1380f89929611f177bd5a163f8850f5c00/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicStreamBridge.lean):
  genuine bounded period-multiple infinite source-state run with
  every original label and original edge retained.
- [SoficTopologicalPeriodicReturn.lean](https://github.com/grwtsk/math/blob/a4f5bf1380f89929611f177bd5a163f8850f5c00/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficTopologicalPeriodicReturn.lean):
  actual period-n topological label-point count connected to the
  source `PeriodicLabelPoint` for n>0.

There is no graph-state quotient or changed alphabet. Each
`rightLiveGraph G` vertex is the ORIGINAL state paired with a
proof of a real infinite future run; its edge predicate is
`G.edge s.val a t.val`. A proof of an edge is not mistaken
for a second occurrence of the same (state,label,state) triple.

## 2. Primary proof A: genuine right-infinite continuation

A vertex `s` satisfies `GraphRunFrom G s` when there exist an
original label stream and an original state stream with
`states 0 = s` and, for ALL natural k,

```lean
G.edge (states k) (trace k) (states (k + 1)).
```

The `graphRunFrom_prepend` theorem takes one original labeled
edge from s to t and an actual right-infinite run from t,
prefixes the original label and starting vertex to the two
existing infinite streams, and proves the seam and all later
edges. Its induction extension
`graphRunFrom_of_wordPath` establishes that every earlier
vertex on a true WordPath leading to a live endpoint is live.

The stronger proof `wordPath_prefix_of_graphRunFrom`
constructs a single ACTUAL infinite state/label run beginning
at the original finite path's start and proves the original
finite word at every index `i : Fin word.length`. It retains
the source vertex, intermediate edge choices, first/last
letter order and exact tail seam. Therefore

```text
RightExtendableGraphWord G w
  ⇒ realizedTopologicalFactorLanguage (GraphLanguage G) w.
```

The proof uses the previously established
`graphLanguage_of_run_block` for EVERY finite block of the
constructed true graph run, followed by the existing exact
topological carrier comparison.

Define `AllVerticesHaveOutgoing G` to require an original
labeled edge `G.edge s a t` for every original source vertex.
It is stronger than accepting a word and is an honest
graph-local structural condition; empty carriers satisfy it
vacuously. `graphRunFrom_of_allOutgoing` chooses an actual
outgoing edge at each state and iterates its true destination,
retaining the emitted label as the trace coordinate. Thus
every finite original path has a right-infinite continuation,
which discharges the explicit source extension premise:

```text
AllVerticesHaveOutgoing G
  ⇒ ∀ w, GraphLanguage G w
       ↔ realizedTopologicalFactorLanguage (GraphLanguage G) w.
```

This is `graphLanguage_iff_realized_of_allOutgoing`.
It does NOT assert nonblocking for every original finite graph.
The more general
`graphLanguage_iff_realized_of_rightExtendable`
keeps the weaker source-specific witness premise visible.

## 3. Primary proof B: exact restriction to right-live vertices

The new `RightLiveState G` is a subtype of the ACTUAL original
state carrier, with membership proof `GraphRunFrom G s`.
The original source edge predicate is retained exactly:

```text
rightLiveGraph G .edge s a t = G.edge s.val a t.val.
```

Every true `WordPath` of the right-live graph projects to a
true ORIGINAL `WordPath`, unchanged word and endpoints.
Conversely, an original `WordPath G s w t` whose final t has
an actual infinite run lifts inductively to a path in the
right-live graph: the same original intermediate vertex becomes
live because its remaining finite path precedes the actual
tail run. The two source-preserving constructions give

```text
GraphLanguage (rightLiveGraph G) w
  ↔ RightExtendableGraphWord G w.
```

This is `rightLiveGraph_language_iff_rightExtendable`.
No existence witness or intermediate state is inferred merely
from matrix positivity or an unlabeled adjacency.

Every right-live vertex has an actual edge to a right-live
successor: take the first edge of its GIVEN source infinite
run and use that run's literal suffix from time one. Thus
`rightLiveGraph_allOutgoing` is proved unconditionally,
including when the right-live graph is empty.

With finite original State and finite Alphabet, the subtype of
live original vertices is also finite. Applying the above
nonblocking realization theorem to this real restricted graph
returns the source-exact complete language identity

```text
RightExtendableGraphWord G w
  ↔ GraphLanguage (rightLiveGraph G) w
  ↔ realizedTopologicalFactorLanguage
        (GraphLanguage (rightLiveGraph G)) w.
```

These are `rightLiveGraph_language_iff_realized` and
`rightExtendable_iff_liveGraph_realized`.

The source also proves the realized language of the right-live
graph is contained in the original realized language by
projecting the same original path witnesses for every finite
factor. The MORE ambitious claim that every infinite stream
admitting all original graph words has one consistent actual
original graph-state run is not established in these modules;
that requires a separate finite-branching compactness/König
proof, not a superficial substitution of similarly named
`GraphLanguage` and `RunsOnGraph` predicates.

## 4. Primary proof C: ALL actual infinite label runs survive pruning

Given an actual infinite original run with state function s and
label function x, define the right-live witness at time k to
be the original suffix

```text
(s(k+j), x(k+j)) for j = 0,1,2,...
```

Its original edge equation holds because the original run
equation holds at k+j. Thus the source lifts the entire
state sequence to `RightLiveState G` WITHOUT changing any
state value or label coordinate.

Conversely, project any right-live run's subtype state
coordinate back to its original state; its original indexed
edge holds by definition of `rightLiveGraph`. Consequently

```text
RunsOnGraph G trace
  ↔ RunsOnGraph (rightLiveGraph G) trace
```

for EVERY infinite trace, and without requiring finite State,
finite Alphabet, deterministic edge predicates or an exact
language presentation. This is
`runsOnGraph_original_iff_rightLive`.

The earlier `periodic_point_has_bounded_periodic_state_run`
has already constructed a real infinite source-state run for
every original genuine period-dividing-n label point
`PeriodicLabelPoint (GraphLanguage G) n hn`, using
`hn : 0<n` and actual whole-language equality with itself.
By the run equivalence, the SAME infinite repeated original
label word is realized as a run in the right-live graph.
The existing `graphLanguage_of_run_block` then proves all
its finite factors in the right-live graph language.

Reverse inclusion is the actual original path projection.
Thus `periodicFactors_original_iff_rightLive` supplies
the same full factor-language predicate in BOTH directions,
and the new genuine subtype equivalence

```text
PeriodicLabelPoint (GraphLanguage G) n hn
  ≃ PeriodicLabelPoint (GraphLanguage (rightLiveGraph G)) n hn
```

is the identity on the actual original `Fin n→Alphabet`
label tuple. `periodicLabelPoint_card_eq_rightLive`
then gives equality of distinct label counts, not equality
of based n-cycles.

Composing the preexisting real topological period-n
equivalences yields

```text
topologicalPeriodicPointCount (GraphLanguage G) n hn
  = topologicalPeriodicPointCount
      (GraphLanguage (rightLiveGraph G)) n hn
```

for n>0, without assuming the entire finite languages are
equal. This is
`topologicalPeriodicPointCount_eq_rightLive`.

This proof depends on the SAME earlier bounded graph-state
period-multiple theorem. It is not an independent second
proof of that theorem and does not prove a fresh same-period
state lift, faithful graph-cycle labelling or vanishing of
the original signed missing/surplus lift defects.

## 5. Hostile cases, zero-length boundary and finite controls

The original terminal-edge graph
`false --()--> true` contains a genuine one-step
`WordPath` but no infinite source run; both its vertices
are removed by right-live pruning. Its finite original
language contains `[()]`, while its right-live graph
language and realized topological language do not. This
is the original graph-level strict example, not an analogy.

For a graph with an isolated state and a nonblocking
component, pruning can delete even the zero-length
source `WordPath.nil` at that state. Therefore original
zero-step based-cycle cardinalities and
`trace(labeledAdjacency G ^ 0)` are NOT claimed invariant.
All periodic label-point preservation is stated for
positive n. An empty state carrier causes no spurious
graph word or infinite stream in the precise predicates.

An independent Python source-reference checker
`check_sofic_right_live_2026_11_02.py`, SHA-256
`36b1fc7446bba83d888b753e96097cdbc3d2bbc5ad0ac455886160232e449d85`,
was executed for ALL 261 original two-label graph edge
predicates with state cardinal 0,1,2, and every binary
word of lengths 0..4 (8,091 graph-word cases).
Two INDEPENDENT finite right-live calculations—reachable
directed cycles and greatest fixed point of deletion
of dead-end states—agreed exactly. Exact original path
enumeration, separately restricted source path enumeration,
and infinite continuability via finite directed cycles
all agreed. Results:

| Independent finite quantity | Actual count |
|---|---:|
| Original graphs | 261 |
| Word cases | 8,091 |
| Original accepted finite words | 5,960 |
| Right-extendable source words | 5,912 |
| Strictly nonextendable accepted words | 48 |
| Graphs satisfying all-outgoing (including empty graph) | 229 |
| Word cases under all-outgoing graphs | 7,099 |
| Disagreements | 0 |

A separate direct test of all 7,830 positive-period
binary graph-word cases for n=1..4 compared bounded
closed word-macro paths before and after pruning:
there were zero changes to periodic admissibility.
The numbers are exact FINITE regression controls, not
Lean compilation, a kernel certificate, or an all-size
graph computational proof.

The underlying argument is standard finite graph
right-essentialization and finite-state periodic cycle
reasoning. This work contributes a source-preserving
typed comparison and testable theorem statements.
No novel graph-theoretic discovery relative to prior
literature is asserted.

## 6. What is still open and what is not promoted

This iteration does NOT prove that the full original
topological subshift carrier equals the right-live
topological carrier for arbitrary finite G. Mathematically
that needs to identify any infinite trace with all finite
factors in `GraphLanguage G` with a single coherent
original infinite state path. The finite-state branching
compactness/König construction is a separate Lean target.
One direction, from a source run to both carriers, has
been proved; the reverse is not silently introduced.

An additional useful next positive-n theorem is that
the ORIGINAL based n-cycle counts (and hence the
original numeric adjacency traces) survive right-live
pruning because every vertex of a positive-length
based cycle admits infinite repetition. The present
source proves the positive-period LABEL-point invariant
and run invariant, not this additional cardinal or
signed-fiber equality. At period zero pruning can
genuinely change the trace.

The noncomputable `RightLiveState` proof subtype does
not implement an executable graph pruning algorithm.
The independent finite reference checker does use
cycle reachability and greatest-fixed-point deletion,
but there is no Lean kernel refinement theorem
from that Python calculation to the source subtype.

Neither an infinite or analytic spectral/number theory
graph, Möbius integer cancellation, zeta-zero divisor,
Fredholm trace, PDE regularity, Hodge representative,
RH or a Noe runtime source graph is identified by these
finite original graph results. All require independent
source, topology/operator and quantitative bridges.

## 7. Verification identity and actual status

The three new sources were added without modifying
the original LabeledGraph, original based-cycle data,
word-matrix source, older topological subshift modules,
root imports or the selected toolchain/Mathlib lock.

Selected Lean environment: `leanprover/lean4:v4.34.1`,
pinned Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
The adjacent static verification target pins all three
immutable Git source blobs, and a managed replay profile
retains the original contracts while adding these new
mathematical declarations.

The resulting selected project-side source inventory
contains **41 modules**, with **23 managed contracts**
and **153 selected declarations** (the named private
noncomputable Fintype instance still requires compilation
as part of its source module even though it is not listed
as a separate declaration audit target). All other
upstream imported dependencies must be freshly resolved
by Noe managed registry v3 before any native acceptance.

**Only source publication and byte readback are confirmed.**

- Native Lean compilation: NOT_RUN.
- Expected-type/universe checks: NOT_RUN.
- Fresh trust-zero kernel replay: NOT_RUN.
- Complete transitive declaration axiom audit: NOT_RUN.
- Noe registry preparation/resource-owner activation: NOT_RUN.
- Native host restoration: NOT_RUN.
- Independent mathematical literature novelty review: NOT_ASSESSED.
- Source proof candidate acceptance: FALSE / OPEN.

The canonical Noe proof skill was inspected at
`grwtsk/noeaaeue/main` snapshot
`d86e951560b843cba455dfc3eebd0ca560a27511`,
proof skill blob
`5292446e4ef1398ba928d8ad339b662415166f19`.
The ChatGPT runtime has no installed Lean/Lake/elan
or verified local Noe/math checkout; no bypassed
native execution or queue action is claimed.
An authorized current Noe owner may run the source-
bound managed check only after inspecting current
resource state, source/producer pins and holds.

## 8. Revision and next actions

Mathematical source revision:
`a4f5bf1380f89929611f177bd5a163f8850f5c00`.
Source blobs:
`81deeb4768d43e13654b2aabb004c31478d2c9d5`;
`cb51c846c361986a123171a851e8b82155d901d5`;
`c5472ba92348a988e1dc12b870ca8973cfa20bf7`.
Tracking issue:
https://github.com/grwtsk/math/issues/1576

The immediate acceptance frontier is exact-source
managed Lean compilation of the pinned new modules
and their complete imported closure, with separate
expected-type, kernel, axiom and owner-restoration
evidence. The next mathematical frontier is the
original finite-state compactness/König converse,
followed separately by positive-n original based-cycle
multiplicity and trace preservation under pruning.
