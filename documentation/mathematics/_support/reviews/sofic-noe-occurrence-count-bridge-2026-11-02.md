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
