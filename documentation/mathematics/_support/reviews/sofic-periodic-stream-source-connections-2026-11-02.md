# Exact periodic symbolic streams and finite sofic graph-state realizations

Local mathematical attribution: grwtsk contributors.
Review date: 2026-11-02.
Status: independent mathematical explanation, source-bound Lean proof candidates,
and finite modular reference checks; NOT a kernel-verified source closure.

## Abstract

The original finite label-word notion of a period-dividing-n point is
equivalent, as a type with explicit inverse, to the actual infinite
one-sided period-n label streams obeying the same complete finite-factor
language condition. For an exact finite labeled-graph presentation,
every such stream has a REAL periodic graph-state run of period m*n
for some integer 1<=m<=card(State). The run emits the very same
infinite labels at every natural index, not merely matching the
initial n- or m*n-word. The proof combines previously published
sharp word-matrix and original BasedCycleData multiple-lift results
with the original periodic graph-state streaming construction.
An exact converse sends every such source run back through ALL
finite factors to the original language. This is a mathematical
source bridge; it does not assume a one-period graph lift or
establish a topological conjugacy, Fredholm determinant, zeta
identification, or an arithmetic cancellation estimate.

## 1. Original objects and new source

The immutable new source is
[SoficPeriodicStreamBridge.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicStreamBridge.lean),
commit `983a0ef766db992d394b30fb7cb0e61be0fa9702`, Git blob
`9e35714bacb361360476a92f3fb5923839c1bbf1`.
Its direct imports are
`SoficPeriodicSourceIntegration.lean` and pinned `Mathlib`.
Original source carriers `LabeledGraph`, `WordPath`,
`BasedCycleData`, `walkDataLabels`, `basedCycleWord`,
`repeatBlock`, `PeriodicLabelPoint`, `RunsOnGraph`,
`HasFiniteBlock`, `GraphLanguage` and the original
numeric word matrices remain unchanged.

The new source introduces only the explicit stream subtype
`PeriodicAdmissibleStream language n`, requiring
`forall k, trace(k+n)=trace(k)` and source admission of
every finite observed factor. It does NOT define a new graph,
new arithmetic observable, a quotient of the original graph
state, or an unproved equivalence type as an axiom.

Mathematical hypotheses are distinct:
* For `periodicLabelPoint_equiv_admissibleStream`, only the
  original language and `hn : 0<n` are used.
* For actual graph-state lifting and its iff, State and Alphabet
  have finite carriers, State has decidable equality, n>0,
  and the WHOLE finite-word-language equality
  `forall w, language w <-> GraphLanguage G w` is required.
* No general same-period complete lifts, faithful cycle labels,
  minimal label period, or state-period minimality is assumed.

The selected toolchain is `leanprover/lean4:v4.34.1`, pinned
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Full project + upstream native compilation is NOT_RUN.

## 2. Primary source-preserving proof

### Statement A — finite words are precisely periodic streams

Take any actual `PeriodicLabelPoint language n hn`, with
`letters : Fin n -> Alphabet`. Its original
`repeatBlock hn letters` is an infinite sequence of genuine
period n by `repeatBlock_period`, and its defining subtype
property supplies EVERY finite factor of that infinite sequence.

Conversely, take `trace : Nat -> Alphabet` with
`trace(k+n)=trace(k)` and the same full factor-language property.
Its first n values `letters(i)=trace(i)` determine every
later value: induction over repetitions gives
`trace(r+q*n)=trace(r)`, and the identity
`k%n+n*(k/n)=k` implies `trace(k%n)=trace(k)`.
Hence the first n letters' infinite repetition is EXACTLY the
original trace at every index. The two assignments are inverse
by extensionality. The declaration
`periodicLabelPoint_equiv_admissibleStream` states this
actual type equivalence, not just cardinality equality.
The helper `periodic_trace_mod` proves the modular recovery.

### Statement B — an m-fold finite lift emits the same infinite labels

The original source lemma for `Fin.repeat m letters`
means the letter chosen at index j of the longer block is
`letters(j%n)`. Thus the (m*n)-periodic repetition
reduces at k to
`letters((k%(m*n))%n)`. Because n divides m*n,
the pinned modular-divisibility lemma gives

```text
(k % (m*n)) % n = k % n.
```

Consequently
`repeatBlock (Nat.mul_pos hm hn) (Fin.repeat m letters)`
equals `repeatBlock hn letters` as an ENTIRE function
`Nat -> Alphabet`. The declaration is
`repeatBlock_finRepeat_eq`.

### Statement C — sharp bounded periodic original graph-state run

The earlier `periodic_label_point_has_exact_repeated_cycleWord`
returns `1<=m<=card State` and an ACTUAL
`c : BasedCycleData G (m*n)` satisfying
`basedCycleWord G (m*n) c = Fin.repeat m letters`.
This uses the original finite macro-boundary pigeonhole and
exact word-matrix bridge, and does not assert m=1.

The earlier `basedCycleStateStream`, built directly from
inductive `LabeledWalkData`, gives a state function `s`
of period m*n. Its original edge theorem supplies
`G.edge (s k) (repeatBlock ... basedCycleWord k) (s(k+1))`
at every k. Substitute the ACTUAL Fin.repeat word equality
and Statement B to obtain the very same infinite trace
`repeatBlock hn letters`, with no dropped seam.
The declaration
`periodic_point_has_bounded_periodic_state_run`
returns both all edges and the true (not necessarily minimal)
state period at the same bounded multiplier.

### Statement D — converse whole-language equivalence

For any period-n label block `letters`, the source
`periodic_word_iff_bounded_graph_state_run` states:
all finite factors of `repeatBlock hn letters` belong to
`language` if and only if some state run has period
m*n with `1<=m<=card State` and emits exactly these
labels via the original graph edge predicate.

Forward is Statement C. For the reverse, discard only the
state-period proof, retain the actual state function and every
original edge, invoke the previously published
`graphLanguage_of_run_block` to show that EACH finite
factor is an original graph word, and return to `language`
using exact whole-language equality. This is not mere
admission of one finite prefix.

The consumer `admissibleStream_has_bounded_graph_state_run`
combines Statement A with Statement C and returns the graph
run for the original genuine infinite stream, not merely
a finite tuple.

## 3. Pinned theorem-level source dependency graph

Below are the important source nodes, with the exact
original role each plays. The complete source-import
target also includes certified transversals, original
finite recurrence proofs, all intermediate fiber/word
modules, and transitive mathematical-logic dependencies.

| Source | Git blob prefix | Actual relation |
|---|---|---|
| [ExactSoficLanguageCover.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/DynamicalSystemsAndErgodicTheory/ExactSoficLanguageCover.lean) | `f50489eaf6c7` | Core LabeledGraph / WordPath / GraphLanguage / HasFiniteBlock |
| [SoficLanguageTransversal.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficLanguageTransversal.lean) | `238da905b659` | Entire source-word language exactly covers original graph paths |
| [SoficPeriodicMatrixTrace.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicMatrixTrace.lean) | `044644b345b4` | Original based-cycle words, repeatBlock, label-point type, adjacency and count |
| [SoficBasedCycleCard.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficBasedCycleCard.lean) | `d7fd2f5aad64` | Original inductive based-cycle finite counting |
| [SoficCycleLabelBijection.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficCycleLabelBijection.lean) | `bd1ba53939ed` | Faithful and same-period complete lifts are independent requirements |
| [SoficPeriodicRunFullShift.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicRunFullShift.lean) | `265aa4180f41` | Genuine infinite graph-state run yields all finite source factors |
| [SoficCycleRepetitionFromWalk.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficCycleRepetitionFromWalk.lean) | `00263005b2f4` | Original based cycle produces periodic source state and label streams |
| [SoficExactPeriodicTraceLedger.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficExactPeriodicTraceLedger.lean) | `b3f5b7ce5e0b` | Original adjacency trace corrected by missing/surplus same-period lifts |
| [SoficPeriodicWordMatrix.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicWordMatrix.lean) | `d8f0423d8b87` | Literal word-specific transition matrix counting original path choices |
| [SoficMacroBoundaryPigeonhole.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficMacroBoundaryPigeonhole.lean) | `fde86d048d89` | Sharp original state bound for closing a repeated word |
| [SoficWordPowerClosedPath.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficWordPowerClosedPath.lean) | `fc3842103f18` | Positive exact word-matrix trace iff genuine repeated closed WordPath |
| [SoficBoundedWordMatrixCriterion.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficBoundedWordMatrixCriterion.lean) | `3be4fc0e7b95` | All finite periodic factors iff a bounded positive exact word-power trace |
| [SoficPeriodicMultipleLift.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicMultipleLift.lean) | `ece978c7389c` | Original BasedCycleData at length mn with exact Fin.repeat label word |
| [SoficPeriodicSourceIntegration.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicSourceIntegration.lean) | `21c602ba8f6b` | Distinct periodic word counts, certified matrix and defect ledger |
| [SoficPeriodicStreamBridge.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicStreamBridge.lean) | `9e35714bacb3` | New exact finite-stream equivalence and bounded periodic graph-state realization |

The fully pinned project import closure now selects
22 project modules (the previous 21 at the old source commit,
plus the new `SoficPeriodicStreamBridge.lean`).
The current source commit also contains an ADDITIVE source
update to `SoficPeriodicMatrixTrace.lean`
(blob `044644b345b46c90d82dffde6c7485d617b4fbd9`)
relative to the old integration source; it adds a finite
seed walk-count row-sum theorem and does not change
the original graph or periodic-point definitions.
Both prior and current blob identities remain separate.

## 4. Other related sources and exact non-bridges

Repository discovery scanned the non-truncated tree inventories
for DynamicalSystemsAndErgodicTheory (197 entries),
Combinatorics (2,878), MathematicalLogicAndFoundations (4,219),
LinearAndMultilinearAlgebraMatrixTheory (3,124), and
NumberTheory (13,297). The inventory was filtered to relevant
family names, then substantive source declarations were inspected
in these selected adjacent files. It does NOT mean that every
source declaration in those entire subtrees has been read.

* [PeriodicPts.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/DynamicalSystemsAndErgodicTheory/PeriodicPts.lean)
  (blob `6c765b5f701ae5a51aaa3893473b7aff51e0d3fa`)
  defines general `Function.IsPeriodicPt` and minimal-period
  lemmas. The new stream source proves the coordinate period
  directly; it does NOT claim a checked import-based equivalence
  to `Function.IsPeriodicPt (oneSidedShift)`, nor that this
  legacy port is part of the current compiled closure.
* [SymbolicDynamicsBasicPublic.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicPublic.lean)
  (blob `a5cecafff31a4cb24b5c9f20a3f2e91100e5d125`)
  has topological `Subshift`, `MulSubshift`, and
  `languageOn`. A theorem matching its topological carrier
  and chosen language with `PeriodicAdmissibleStream`
  is NOT yet present. The finite/infinite coordinate bridge
  is a necessary object comparison, not a topological conjugacy.
* [PoeticSoficLanguage.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/DynamicalSystemsAndErgodicTheory/PoeticSoficLanguage.lean)
  (blob `7d4a574451150e123d50c17b923e037253083005`)
  reuses the original `LabeledGraph` and `WordPath` and
  constructs a literal closed sample path, plus its OWN
  `IsSoficFactorLanguage (GraphLanguage graph)`.
  It does NOT supply an exact external trace-factor language,
  a formal source-alphabet `Fintype Beat` instance to the
  numeric matrix consumer, or a novel analytic result.
* [SearchSoficLanguage.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/Combinatorics/GraphTheory/SearchSoficLanguage.lean)
  (blob `0408948886533c87debacc0e537c3234469ae702`)
  models labeled relation sandwiches for bounded repository
  search. A matching graph-state/edge and complete-language
  map to the ORIGINAL sofic presentation remains required
  before lifting its candidate paths.
* [FiniteWeightedGraphEnergy.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/DynamicalSystemsAndErgodicTheory/FiniteWeightedGraphEnergy.lean)
  (blob `eea7c86ff574983fa6d4cc449424a1966756f023`)
  models finite rational weighted Dirichlet energy, not the
  same Nat-valued label multiplicity matrix or genuine
  heat semigroup. No energy estimate is transferred.
* [DynamicSoficSpectralCover.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/NumberTheory/DynamicSoficSpectralCover.lean)
  and [DynamicSoficExactLanguageBoundary.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/NumberTheory/DynamicSoficExactLanguageBoundary.lean)
  use spectral partitions and rooted singleton-PREFIX
  languages. A rooted selected prefix is not the same as
  an entire unrooted finite-FACTOR language. No source
  spectral graph map or exact factor-language bridge
  has been established.
* [ChowlaSoficObservations.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ChowlaSoficObservations.lean)
  encodes arithmetic-labeled finite walks, but its
  function-field and integer Chowla cancellation suppliers
  are not proved by this finite periodic graph construction.
* [SoficDivisorPrimeCountingBridge.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SoficDivisorPrimeCountingBridge.lean)
  and [SoficDivisorTransforms.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SoficDivisorTransforms.lean)
  retain finite indexed zero records and their multiplicity
  and selected-complement terms; the full analytic zeta
  divisor, explicit formula, and source-preserving infinite
  limit are distinct unresolved comparisons.
* [ShiftSemantics.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/Combinatorics/ShiftSemantics.lean)
  models zero-filled logical bitfield shifts and overflow;
  [ConcreteProfileAndPathShift.lean](https://github.com/grwtsk/math/blob/983a0ef766db992d394b30fb7cb0e61be0fa9702/GRWTSK/Combinatorics/GraphTheory/ConcreteProfileAndPathShift.lean)
  models finite raster surgery. Their word “shift” does not
  imply a theorem about the present period-n symbolic shift.

The sharp boundary remains: an exact presentation can have
multiple graph cycles for one periodic label point, or no
closed graph lift at the SAME n. The original duplicate-loop
and alternating-state one-letter graphs are exact hostile cases.
The new m*n graph-state realization preserves the entire
label stream but does not turn graph-to-label maps into bijections.

## 5. Finite regression and evidence

A new independently executed reference check tested
74,290 modular coordinate equalities for Boolean words
of lengths 1..7, multipliers 1..5, and k over the range
0..3mn+3. All checks passed
`(k % (mn)) % n = k % n`, and hence equality of
the two repeated Boolean label streams in this finite domain.
It does NOT execute Lean, validate the source construction
in an arbitrary graph, or certify a universal theorem.

The new source was published to maintained math main through
a non-force expected-head commit; the immutable Lean blob was
fetched back byte-exact. It introduces no authored
`sorry` or new research axiom by static text inspection.
Lean compilation, expected types/universes, fresh kernel
replay, complete transitive axiom audit, full upstream
Mathlib project closure and Noe host restoration all remain
NOT_RUN. No native verification or production runtime
implication is claimed.

The static verification target adjacent to this review pins
the new 22-module project-side source inventory and a new
Noe-managed replay profile for 12 source contracts and
24 selected declaration names. The Noe canonical proof
skill was inspected at snapshot
`855a6959f3e2fe1c7901a9cefe33a5433f0028e5`;
skill blob `5292446e4ef1398ba928d8ad339b662415166f19`.
It confers no native execution authority; an exact-source
managed run and separately evaluated evidence facets remain
the acceptance obligation.

## 6. Next mathematical and verification obligations

The immediate mathematical next bridge is an actual one-sided
shift operation and a *checked* statement identifying
`PeriodicAdmissibleStream` with that shift's periodic points
as defined by the project's general dynamical-periodic-point
interface. A separate positive topological comparison would
be required before transferring `MulSubshift` language,
continuity or conjugacy statements. Rooted spectral sofic,
arithmetic Chowla, and zeta divisor consumers require
their own source labels, morphisms, invariants, bounds and
unresolved residuals; keyword similarity is not transport.

The immediate verification obligation is a managed native
Lean 4.34.1 import-closure rebuild, expected interface
checks, fresh trust-zero kernel replay, declaration-scoped
transitive axiom audit, and resource-owner restoration,
pinned to `983a0ef766db992d394b30fb7cb0e61be0fa9702` and the selected module/producer
blobs. Static publication does not replace that receipt.

## 7. Revision

Authoring: grwtsk contributors. Source commit `983a0ef766db992d394b30fb7cb0e61be0fa9702`.
New Lean blob `9e35714bacb361360476a92f3fb5923839c1bbf1`.
Tracking issue: https://github.com/grwtsk/math/issues/1576.
Historical review snapshots and verification targets remain
unchanged and retain their own evidence scope.
