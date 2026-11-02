# Occurrence-faithful finite source walks: mathematical optimization contract

Review date: 2026-11-02. Attribution: grwtsk contributors, with OpenAI source-review assistance.

Evidence level: **MATHEMATICAL SOURCE REVIEW / FINITE PYTHON DIAGNOSTICS**.
The new Lean corollary is **SOURCE_PROOF_CANDIDATE; COMPILATION_NOT_RUN;
EXPECTED_TYPES_NOT_RUN; FRESH_KERNEL_NOT_RUN; AXIOM_AUDIT_NOT_RUN**.
No certificate for a runtime implementation is inferred from a Lean source file.

## Pinned original mathematics

Inspected at `grwtsk/math` commit `dcc1d479fd6757dcadd47fab2f057b657989e5d2`:

- `GRWTSK/Combinatorics/GraphTheory/DirectedGraphPathOccurrences.lean`,
  Git blob `65da6d5cbe73bb1e5263f5bb7c4e001c0d5d1ad3`:
  `edgeOccurrences_comp`, `edgeOccurrences_injective`,
  `parallel_loop_summary_counterexample` and
  `endpoint_vertex_summary_not_injective` distinguish true typed edge
  occurrences from vertices, path length, or endpoint summaries.
- `GRWTSK/Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean`,
  blob `7636c9cc3e04cd5d385395a32f6e1e2343c188b3`:
  `dictionary_prefix`, `nodes_prefix`, `output_recovers` and
  `certified_old_references` establish source-exact prefix growth and
  conditional reuse of old decision evidence.
- `GRWTSK/Combinatorics/GraphTheory/DirectedGraphPrefixTableCompaction.lean`,
  blob `3dbadbe4be0faf9a7dfc58a7fa62012683d5d481`:
  `decode_compact` and `compact_recovers` preserve the actual decoded
  rows and clarify that numeric slots can require reindexing.
- `GRWTSK/Combinatorics/GraphTheory/SearchSoficLanguage.lean`,
  blob `0408948886533c87debacc0e537c3234469ae702`:
  `LabeledSandwich`, `WordPath.mono`, `MissingTransition` and
  `CandidateLanguageCompleteUpTo` separate bounded syntactic
  language/transition coverage from mathematical certification.
- `GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicMatrixTrace.lean`,
  baseline blob `70e416083e8fd1238ffdd8896f984e0a5382c139`:
  `edgeMultiplicity`, `labeledWalkCount`,
  `labeledAdjacency_pow_apply_eq_walkCount` and
  `trace_pow_eq_basedClosedWalkCount` establish the source-level graph
  walk/matrix correspondence. The new `finiteSeedWalkCount_eq_matrixPowRowSum`
  corollary proposes exactly the finite-seed aggregate consumed by a
  TUI walk-count recurrence. Its own fresh compiler/kernel status is NOT_RUN.

The repository's existing `SoficExactPeriodicTraceLedger.lean`
(blob `b3f5b7ce5e0b7eb0a4c1081dce166815824b6bac`)
retains unmatched and multiple lifts. It does NOT permit identifying the
number of graph walks with distinct factor-label periodic points.

## Mathematically necessary source identity repair

A Noe indexed source reference occurrence should carry
`(source-document, occurrence-ordinal, target-document, kind, line,
literal-reference)`; reverse navigation must carry the *original*
reference owner and ordinal. The ordinal is relative to the pinned
source document and deterministic extractor; changing its source
bytes or extractor changes the pinned snapshot.

The previous SQLite key `(source, target, kind, line)` erased
two otherwise identical source link tokens on the same line.
Such a quotient is not injective on actual edge occurrences and cannot
serve as a faithful count or reconstruction code. The corrected
`(source, target, kind, line, occurrence)` key distinguishes them.
The correspondence to arbitrary Quiver.Path types is a **mathematical
analogy only** until a typed source-to-index refinement is checked.
Only the indexed source-link graph is currently represented.

For example, choose two source states `a,b`, two distinct edge
occurrences `a -> b`, and one `b -> a`. The occurrence-count
adjacency matrix is

```text
A = [[0, 2],
     [1, 0]]
```

For the single starting state `a`, original-edge-walk counts at
lengths 0..4 are exactly `[1,2,2,4,4]`. Deduplicating the
two parallel `a -> b` edges changes these counts and changes the
based-cycle trace at length two from `4` to `2`.
This is a finite graph calculation, *not* an RH or analytic zeta result.

## Efficient recurrence and its exact scope

Let `S` be a finite **set** of seed vertices. Index actual source
edge occurrences separately, even when text labels and endpoints agree.
For each state `v`, let `c_0(v) = 1` if `v in S`, else zero. Then

```text
c_(n+1)(w) = sum_{(v,e,w) an actual source edge occurrence} c_n(v)
count_n = sum_{w} c_n(w)
        = sum_{s in S} sum_{w} (A^n)(s,w)
```

for `n >= 0` within the **selected finite indexed graph**.
Induction on `n` or the existing
`labeledAdjacency_pow_apply_eq_walkCount` gives the equality.
The new finite-seed corollary in the same original matrix module
records this multi-seed form without introducing a new path type.
It is mathematically independent of whether a later runtime has
implemented or formally refined the recurrence.

A sparse adjacency iteration computes counts without constructing
the exponentially large set of all edge words. At work budget
exhaustion, return **only complete previously computed lengths**;
the next length must remain uncomputed, never a partial count
masquerading as complete. Witness enumeration has a *separate* budget.
No complexity optimum is asserted from asymptotic notation alone.

## Grouping parallel edge multiplicity: exact recurrence, adaptive implementation

The selected mathematical module `SoficPeriodicMatrixTrace.lean`,
source blob `044644b345b46c90d82dffde6c7485d617b4fbd9`,
already defines natural-number adjacency entries by counting actual
graph-label occurrences and proves
`labeledAdjacency_pow_apply_eq_walkCount`.
For each source state `s`, target `t` and finite graph edge
occurrence inventory `E`, define

```text
m(s,t) = #{e in E : source(e) = s and target(e) = t}
c[n+1,t] = sum_s c[n,s] * m(s,t).
```

For a finite edge multiset, regrouping the original
`sum_{e:s(e)=s} c[n,s]` by target gives the same natural-number
sum. This is multiplication distributivity over the original edge
occurrences, not an identification of two indistinguishable
labeled factor-language points. If two source references coincide
in literal line and target but have distinct ordinal identities,
both contribute to `m(s,t)`. The separate witness automaton must
retain those identities; the *counting matrix* is an allowed
many-to-one summary only for the particular numeric count.

In the corresponding proposed Noe runtime, the counting adapter
may store a sparse weighted row `(target,multiplicity)` while
keeping occurrence-distinct adjacency for witness reconstruction.
A row is grouped only when at least one quarter of its outgoing
source-reference occurrences repeat a target. This policy is
an empirical performance heuristic, not mathematical necessity.
The previous literal per-edge loop is retained elsewhere to
avoid a sparse/simple-graph regression. The logical work budget
still charges every original edge occurrence even if a weighted
row uses fewer arithmetic operations. The reported
`count_pair_ops` is separate from the invariant `count_work`.

Finite Python diagnostics (independent of native Lean) passed
5/5 reference test groups including 10,000 seeded random
small finite multigraph/budget cases and 2,500 further
precomputed-row comparisons. The local 128-state,
12,288-occurrence, 512-pair synthetic fixture showed
about 11.3x lower median *warm count-loop time* after
adaptive grouping; a distinct-target control did not
demonstrate comparable savings. Precomputation has a cold
cost, and neither a universal runtime speedup nor network
optimality is established. The exact Noe test suite and
qualified production runtime were NOT_RUN.

**Formal status:** no new Lean theorem was added for this
runtime optimization: the existing matrix-power recurrence
is the source-level mathematical basis. A proved extraction
refinement from actual pinned Noe reference ordinals to
the selected finite Lean graph, and independent Lean/kernel
acceptance for the existing source candidates, remain open.
No RH or dynamical factor-zeta implication follows.

## Exact finite-occurrence bridge across three existing mathematical interfaces

The source candidate `GRWTSK/Combinatorics/GraphTheory/SourceOccurrenceSoficBridge.lean`
(blob `ba4aeda35e491c9894a33da9272e0d758faf5b3f`)
imports the *original* existing `SearchSoficLanguage`,
`SoficPeriodicMatrixTrace` (and its exact `WordPath` provider),
and `CertifiedTransversal` definitions. It does not introduce an
alternative graph/path type in place of any original provider.

1. `occurrenceEdge` uses the ORIGINAL finite edge occurrence as label
   and records its source/target; the lower (proof-certified) layer of
   `occurrenceSandwich` is empty, with candidate and admissible
   relations equal only for this selected exact source-edge inventory.
2. `original_singleObj_path_to_occurrence_word` and
   `original_singleObj_occurrence_words_injective` reuse the
   original `DirectedGraphPathOccurrences.edgeOccurrences` codec for
   the literal single-object quiver. The one-vertex target labeled
   graph admits the full chronological occurrence sequence, while
   the original edge-list injectivity theorem prevents distinct
   typed paths from collapsing. This is a precise one-object
   specialization, **not** a conversion of arbitrary repository
   source dependency graphs.
3. `search_wordPath_iff_exact` identifies the two separately defined
   inductive finite-word path propositions **only on the identical
   occurrence labels and endpoint relation**.
   `search_language_iff_exact` lifts this to the entire finite-word
   language, not an arbitrary infinite trace.
4. `occurrence_adjacency_multiplicity` specializes the original
   natural-number matrix entry to a sum over **all distinct occurrence
   labels**. `occurrence_walk_count_eq_matrix_row_sum` specializes
   the original finite-seed matrix-power counting theorem without
   replacing or weakening its graph.
5. `ExactSourceRefinement` records the still-MISSING
   source-extractor proof obligations explicitly: a bijection between
   actual raw records and occurrence labels, plus preservation of
   each original source and target. From this *supplied* structure,
   `encoded_occurrences_injective`,
   `encoded_edge_iff`, and
   `raw_wordPath_to_occurrence` preserve occurrence identity,
   incidence, and chronological finite words.
6. `occurrenceTransversal` invokes the existing canonical
   `CertifiedTransversal.Transversal.ofFunction` **only** with the
   fixed equality-plus-endpoint relation proved from the supplied
   refinement. No unconstrained relation or target theorem transfers
   into the original source inventory.

This is source-level formal mathematical composition, not a claim
that Noe's Git/SQLite/Python exporter instantiates
`ExactSourceRefinement`. In particular, no import closure,
lexical query, source link, or graph diffusion step builds
the required bijection; no periodic label-point injectivity or
same-period completeness follows; and no RH theorem is implied.

**Verification gate for the new source blob:** Lean 4.34.1 /
pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`
module compilation, each expected fully qualified theorem type,
fresh kernel replay and complete transitive axiom inspection are
**NOT_RUN**. The new artifact must be compiled before any
kernel-accepted or executable-refinement claim is made. The existing
source-level proofs in imported modules retain their original
separate verification dispositions.

## Finite indexed original occurrence slots

The new source-only `FiniteSourceOccurrenceTable` in
`GRWTSK/Combinatorics/GraphTheory/SourceOccurrenceSoficBridge.lean`
adds an exact finite carrier for a *chosen* extracted source-edge inventory.
For `n` retained occurrences, the original slot identity is
`Fin n`. Each slot has separately recorded payload, original
source owner, source ordinal, source state and target state.
Its declared `owner_ordinal_injective` condition excludes two
original slots being assigned the same owner-and-ordinal key,
even if their printed text, line and endpoints are identical.

`exactSlotRefinement` constructs the existing
`ExactSourceRefinement (Fin n) (Fin n) State` using the literal
identity equivalence of slots. It does **not** identify two raw
payload *values* that happen to be textually equal; such records
remain distinct slots. `eq_of_owner_ordinal_eq` uses the
explicit key uniqueness proof to recover the actual slot.
`rawSlots_to_originalWord` applies the existing raw-to-original
word-path transport, and `walkCounts_eq_matrixRowSum` uses the
existing finite-seed matrix recurrence. The original occurrence
labels and all counted parallel-edge multiplicities are retained.

The runtime table still needs a **separately checked source binding**
to this carrier. This requires proving that each selected Noe
source record came from exact pinned UTF-8 bytes; its source
owner, ordinal, target and reference observations were extracted
and resolved correctly; distinct records were not collapsed; and
the chosen finite *induced* graph did not omit any edge silently.
Source references whose targets lie outside the selected visited
set or are unindexed must be explicit **residuals**.
Reverse-navigation or heuristic candidate edges are NOT original
source imports and cannot be silently included in the same
finite occurrence alphabet.

The corresponding proposed read-only Noe method
`SearchIndex.lean_occurrence_slot_table` emits a bounded table
only for original indexed forward Lean imports whose endpoints
are both visited and source-byte checked. It emits out-of-scope
and unindexed imports separately and declares
`exact_source_refinement="NOT_PROVED"`. This supplies a
checkable finite *input shape*, not a Lean proof that a live
SQLite index instantiates the table. An actual extraction
correctness theorem and trusted Lean replay are still missing.

Independent local finite reference tests: **5/5 passed**,
including a 1,200-case randomized finite-slot and multiplicity
oracle, repeated owner/line/target text with distinct ordinals,
cycle closure, missing versus boundary residuals, duplicate
owner/ordinal rejection, and tampered source-byte refusal.
These are NOT the installed Noe regression suite and do not
replace Lean compilation, kernel/axiom checking or checked
source-to-runtime refinement.

## Runtime boundary and acceptance

Noe's proposed indexed search schema `noe.repository-search/2`
introduces a positional source occurrence identifier, reverse
occurrence retention, and an independent bounded DP count.
The previous v1 index is rejected until independently regenerated
from pinned Git bytes; no in-place modification and no automatic
source/network fetch are allowed. A future typed runtime refinement
must prove injectivity of the occurrence encoder on the selected
indexed graph and compare the DP counts with actual admissible walks.

Observed external Python finite diagnostics on 2026-11-02:
4/4 test groups PASS, including 500 seeded randomized directed
multigraphs (1..5 states, 0..11 edges, lengths 0..4),
brute walk enumeration, matrix row sums, same-line SQLite
parallel-edge retention, and partial-work-budget rejection.
These checks do not execute Lean, the full Noe checkout, or
independent code-to-theorem equivalence. The complete formal
verification receipt and representative real-index tests remain open.

**Required review gates:** source pin verification; v1 index rejection;
both directions of each source edge's occurrence identity; exact
source-byte/ordinal extraction; bounded count and witness control;
false relation promotion rejection; Lean compiler/kernel/axiom
checks of the proposed corollary; typed source/runtime refinement;
and qualified host acceptance.

The mathematical optimization is therefore **multiplicity-preserving
finite-state dynamic programming**, not an asserted complete or
lossless encoding of every mathematical theory in Noe.
